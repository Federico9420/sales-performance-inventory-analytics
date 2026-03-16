CREATE DATABASE bookstore_bi_project;
USE bookstore_bi_project;

-- =========================
-- TABLA RAW
-- =========================
-- Creamos la tabla donde los datos ingresan directamente desde la tabla madre.
-- No la vamos a modificar directamente pero si validaremos mediante una auditoria de datos.

CREATE TABLE sales_raw (
	row_id INT AUTO_INCREMENT PRIMARY KEY,
	transaction_id VARCHAR(20),
	transaction_datetime DATETIME,
	branch_code VARCHAR(20),
	product_code VARCHAR(50),
	product_name VARCHAR(100),
	quantity INT,
	unit_price VARCHAR(20)  
);

-- =========================
-- VISTA LIMPIA
-- =========================
-- Una vez auditados los registros, creamos una vista limpia.
-- A partir de esta vista, vamos a insertar algunos datos en las tablas de dimension y la de hechos.

CREATE OR REPLACE VIEW sales_clean AS
	SELECT 
	transaction_id,-- ID de transacción original (se mantiene para trazabilidad)
	UPPER(TRIM(branch_code)) AS sucursal,-- normalización de código de sucursal (trim + mayúsculas)
	DATE(transaction_datetime) AS fecha_de_compra,-- extracción de fecha desde timestamp (se descarta la hora)
	TRIM(product_code) AS codigo_de_producto,-- limpieza de espacios en código de producto
	LOWER(TRIM(product_name)) AS descripcion,-- normalización del nombre de producto (trim + minúsculas)
	quantity AS cantidad,-- cantidad vendida (valor original)
	CAST(REPLACE(unit_price, ',', '.') AS DECIMAL(10,2)) AS precio_unitario,-- conversión de precio de VARCHAR a DECIMAL
	quantity * CAST(REPLACE(unit_price, ',', '.') AS DECIMAL(10,2)) AS revenue-- cálculo de revenue por línea de venta
	FROM sales_raw
	WHERE quantity > 0 -- elimina cantidades inválidas
	AND CAST(REPLACE(unit_price, ',', '.') AS DECIMAL(10,2)) > 0; -- elimina precios inválidos

-- =========================
-- DIMENSIONES
-- =========================

CREATE TABLE dim_branches (
branch_id INT AUTO_INCREMENT PRIMARY KEY,
branch_code_clean VARCHAR(10),
branch_name VARCHAR(50),
city VARCHAR(50)
);

CREATE INDEX idx_branch_code
ON dim_branches(branch_code_clean);

CREATE TABLE dim_products (
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_code_clean VARCHAR(50),
product_name_standard VARCHAR(100),
category VARCHAR(50),
subcategory VARCHAR(50)
);

CREATE INDEX idx_product_code
ON dim_products(product_code_clean);

CREATE TABLE dim_time (
date_id DATE PRIMARY KEY,
year INT,
quarter INT,
month INT
);

-- =========================
-- FACT TABLE
-- =========================
CREATE TABLE fact_sales (
fact_id INT AUTO_INCREMENT PRIMARY KEY,
transaction_id VARCHAR(50),
date_id DATE,
branch_id INT,
product_id INT,
units_sold INT,
revenue DECIMAL(12,2)
);

ALTER TABLE fact_sales
ADD CONSTRAINT fk_fact_branches
FOREIGN KEY (branch_id) REFERENCES dim_branches(branch_id);

ALTER TABLE fact_sales
ADD CONSTRAINT fk_fact_products
FOREIGN KEY (product_id) REFERENCES dim_products(product_id);

CREATE INDEX idx_fact_product
ON fact_sales(product_id);

CREATE INDEX idx_fact_branch
ON fact_sales(branch_id);

CREATE INDEX idx_fact_date
ON fact_sales(date_id);

-- =========================
-- CARGA DIMENSIONES
-- =========================

INSERT INTO dim_branches (branch_code_clean)
SELECT DISTINCT sucursal
FROM sales_clean;

UPDATE dim_branches
SET branch_name = 'Ushuaia Store 1',
    city = 'Ushuaia'
WHERE branch_code_clean = 'USH01';

UPDATE dim_branches
SET branch_name = 'Ushuaia Store 2',
    city = 'Ushuaia'
WHERE branch_code_clean = 'USH-02';

UPDATE dim_branches
SET branch_name = 'Rio Grande Store 1',
    city = 'Rio Grande'
WHERE branch_code_clean = 'RG_01';

UPDATE dim_branches
SET branch_name = 'Rio Grande Store 2',
    city = 'Rio Grande'
WHERE branch_code_clean = 'RG-02';

INSERT INTO dim_products (product_code_clean, product_name_standard)
SELECT DISTINCT 
codigo_de_producto,
descripcion
FROM sales_clean;

INSERT INTO dim_time (date_id, year, quarter, month)
SELECT DISTINCT
fecha_de_compra,
YEAR(fecha_de_compra),
QUARTER(fecha_de_compra),
MONTH(fecha_de_compra)
FROM sales_clean;

-- =========================
-- CARGA FACT TABLE
-- =========================

INSERT INTO fact_sales (
transaction_id,
date_id,
branch_id,
product_id,
units_sold,
revenue
)
SELECT 
sc.transaction_id,
sc.fecha_de_compra,
db.branch_id,
dp.product_id,
sc.cantidad,
sc.revenue
FROM sales_clean sc
JOIN dim_branches db
ON sc.sucursal = db.branch_code_clean
JOIN dim_products dp
ON sc.codigo_de_producto = dp.product_code_clean;