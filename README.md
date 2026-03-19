# 📊 Sales Performance & Inventory Analytics Dashboard

🌎 **Language / Idioma:**

- 🇺🇸 English (current)
- 🇪🇸 [Ir a versión en español](#-versión-en-español)

## 🧾 Project Overview

This project analyzes sales performance and product behavior across multiple branches using a simulated retail dataset inspired by a real operational problem.

The goal of the project was to practice **SQL for data processing and transformation**, while using **Power BI to develop analytical insights and business-oriented visualizations**.

The analysis focuses on identifying:

• 📈 Sales performance trends  
• 🧮 Product contribution to revenue (Pareto analysis)  
• 🏬 Branch performance differences  
• 📦 Product segmentation by volume and revenue  
• 🔄 Inventory rotation opportunities between branches  

---

## 💼 Business Problem

Retail businesses with multiple branches often face operational challenges such as:

• Uneven product demand between stores  
• Slow inventory rotation in some locations  
• Difficulty identifying the products that truly drive revenue  

This project simulates a real-world scenario where sales data is analyzed to detect **inventory optimization opportunities and product performance patterns**.

---

## 🗂 Dataset

The dataset is **simulated**, but built around a real business logic observed in multi-branch retail operations.

The data was intentionally designed to reflect **localized demand behavior**: certain products rotate significantly faster in Río Grande branches than in Ushuaia, and vice versa. This asymmetry is the core of the inventory rotation analysis and mirrors a real operational problem where stock imbalances between locations went undetected without systematic data analysis.

Dataset characteristics:

• 🏬 4 branches  
• 📦 1,786 unique products  
• 📑 25,664 sales records  
• 🧾 ~11,455 transactions  
• 📦 ~75,082 units sold  

💰 Total revenue analyzed:

**$196,040,109**

---

## 🧱 Data Pipeline (SQL)

One of the main goals of this project was to **practice SQL for data preparation and transformation**.

The data pipeline follows these steps:

1️⃣ Raw data ingestion  
2️⃣ Data cleaning and standardization  
3️⃣ Creation of **fact and dimension tables**  
4️⃣ Preparation of an analytical model for BI tools

The final structure follows a **⭐ Star Schema** model.

Tables created:

### Fact Table

`fact_sales`

### Dimension Tables

`dim_products`  
`dim_branches`  
`dim_time`

This structure allows efficient analytical queries and seamless integration with Power BI.

---

## 🧩 Data Model

The final model implemented in Power BI follows a **Star Schema architecture**.

### Fact Table

`fact_sales`

- product_id  
- branch_id  
- date_id  
- transaction_id  
- revenue  
- units_sold  

### Dimensions

`dim_products`

- product_id  
- product_name  

`dim_branches`

- branch_id  
- branch_name  
- city  

`dim_time`

- date_id  
- month  
- year  

This model enables scalable analytics and efficient aggregations.

---

## 📊 Dashboard Structure

The Power BI dashboard is divided into **four analytical sections**.

---

### 1️⃣ Sales Overview

High-level KPIs and monthly performance:

• 💰 Total Revenue  
• 📦 Units Sold  
• 🧾 Total Transactions  
• 📈 Monthly Sales Evolution  
• 🧮 Average Ticket per Month  

---

### 2️⃣ Branch Performance

Analysis of commercial performance across branches:

• 💰 Revenue by branch  
• 📦 Units sold by branch  
• 🌡 Monthly sales intensity heatmap  

This helps identify demand differences across locations.

---

### 3️⃣ Product Performance

Evaluation of product contribution to the business:

• 🏆 Top products by revenue  
• 📦 Top products by units sold  
• 📊 Pareto analysis of revenue concentration  

The Pareto analysis highlights how a **small subset of products drives a large share of total revenue**.

---

### 4️⃣ Inventory Rotation Analysis

This section identifies **inventory transfer opportunities between branches**.

The analysis compares product sales velocity across locations and calculates:

• 🥇 Branch with highest rotation  
• 🐢 Branch with lowest rotation  
• 📉 Velocity gap  
• 🔄 Recommended inventory transfer  

This provides **actionable insights for inventory optimization**.

---

## 🔎 Key Insights

• 📊 Revenue follows a **Pareto distribution**, where a small number of products generate a large share of total sales.

• 🏬 Product demand varies significantly across branches, suggesting location-specific purchasing behavior.

• 🔄 Several products show **high velocity in Río Grande but low velocity in Ushuaia**, and vice versa — indicating concrete inventory reallocation opportunities that would go undetected without systematic data analysis.

• 📦 Product segmentation reveals both **high-volume operational items** and **high-revenue niche products**.

---

## 🛠 Tools & Technologies

• SQL  
• Power BI  
• DAX  
• Data Modeling (Star Schema)

---

## 🎯 Project Goals

The main objective of this project was to demonstrate:

• 💻 SQL skills for data transformation and modeling  
• 🧠 Analytical thinking applied to business data  
• 📊 Dashboard design for decision support  
• 📈 Ability to extract actionable insights from data

---

## 🚀 Future Improvements

Possible extensions for this project:

• Add profit margin analysis  
• Implement ABC product classification  
• Integrate demand forecasting  
• Simulate automated inventory recommendations

---

# 🇪🇸 Versión en Español

## 🧾 Descripción del Proyecto

Este proyecto analiza el desempeño de ventas y el comportamiento de productos en múltiples sucursales utilizando un dataset simulado basado en un contexto real de negocio.

El objetivo principal fue aplicar **SQL para la transformación y modelado de datos**, y utilizar **Power BI para generar insights accionables y visualizaciones orientadas a la toma de decisiones**.

El análisis se enfoca en:

• 📈 Evolución de ventas  
• 🧮 Participación de productos en el revenue (Análisis de Pareto)  
• 🏬 Diferencias de desempeño entre sucursales  
• 📦 Segmentación de productos por volumen y facturación  
• 🔄 Oportunidades de rotación de inventario entre sucursales  

---

## 💼 Problema de Negocio

Empresas retail con múltiples sucursales suelen enfrentar desafíos como:

• Desbalance en la demanda de productos entre tiendas  
• Baja rotación de inventario en ciertas ubicaciones  
• Dificultad para identificar qué productos realmente impulsan el revenue  

Este proyecto simula un escenario real donde se analizan datos de ventas para detectar **patrones de desempeño y oportunidades de optimización de inventario**.

---

## 🗂 Dataset

El dataset es **simulado**, pero construido en base a una lógica de negocio real observada en operaciones retail con múltiples sucursales.

Los datos fueron diseñados intencionalmente para reflejar **comportamientos de demanda localizados**: ciertos productos rotan significativamente más rápido en las sucursales de Río Grande que en Ushuaia, y viceversa. Esta asimetría es el núcleo del análisis de rotación de inventario y refleja un problema operativo real donde los desbalances de stock entre ubicaciones pasaban desapercibidos sin un análisis sistemático de datos.

Características principales:

• 🏬 4 sucursales  
• 📦 1.786 productos únicos  
• 📑 25.664 registros de ventas  
• 🧾 ~11.455 transacciones  
• 📦 ~75.082 unidades vendidas  

💰 Revenue total analizado:

**$196.040.109**

---

## 🧱 Pipeline de Datos (SQL)

Uno de los focos principales del proyecto fue el desarrollo de un flujo de datos utilizando SQL.

Etapas del proceso:

1️⃣ Ingesta de datos crudos  
2️⃣ Limpieza y estandarización  
3️⃣ Construcción de tablas de hechos y dimensiones  
4️⃣ Preparación del modelo analítico para BI  

El resultado es un modelo estructurado bajo arquitectura **⭐ Star Schema**.

### Tablas generadas

**Tabla de hechos:**

`fact_sales`

**Tablas de dimensiones:**

`dim_products`  
`dim_branches`  
`dim_time`

Este diseño permite consultas eficientes y escalabilidad analítica.

---

## 🧩 Modelo de Datos

El modelo implementado en Power BI sigue una estructura de **Star Schema**, optimizada para análisis y performance.

### Tabla de hechos

`fact_sales`

- product_id  
- branch_id  
- date_id  
- transaction_id  
- revenue  
- units_sold  

### Dimensiones

`dim_products`

- product_id  
- product_name  

`dim_branches`

- branch_id  
- branch_name  
- city  

`dim_time`

- date_id  
- month  
- year  

---

## 📊 Estructura del Dashboard

El dashboard se organiza en cuatro bloques analíticos:

### 1️⃣ Visión General de Ventas

KPIs principales y evolución temporal:

• 💰 Revenue total  
• 📦 Unidades vendidas  
• 🧾 Cantidad de transacciones  
• 📈 Evolución mensual  
• 🧮 Ticket promedio  

---

### 2️⃣ Desempeño por Sucursal

Comparativa comercial entre tiendas:

• Revenue por sucursal  
• Unidades vendidas  
• Intensidad de ventas (heatmap mensual)  

Permite detectar diferencias de demanda según ubicación.

---

### 3️⃣ Desempeño de Productos

Análisis del aporte de cada producto al negocio:

• 🏆 Productos con mayor revenue  
• 📦 Productos más vendidos  
• 📊 Análisis de Pareto  

Se evidencia cómo un subconjunto reducido de productos concentra gran parte del revenue.

---

### 4️⃣ Análisis de Rotación de Inventario

Identificación de oportunidades de optimización:

• 🥇 Sucursal con mayor rotación  
• 🐢 Sucursal con menor rotación  
• 📉 Brecha de velocidad de venta  
• 🔄 Recomendaciones de redistribución  

Este análisis permite detectar **oportunidades concretas de mejora operativa**.

---

## 🔎 Insights Clave

• 📊 El revenue presenta una distribución tipo Pareto: pocos productos generan la mayor parte de las ventas.

• 🏬 La demanda varía significativamente entre sucursales, lo que sugiere comportamientos de consumo localizados.

• 🔄 Se detectan productos con **alta rotación en Río Grande y baja en Ushuaia**, y viceversa — evidenciando oportunidades concretas de redistribución de stock que pasarían desapercibidas sin un análisis sistemático de datos.

• 📦 Se identifican tanto productos de alto volumen (operativos) como productos de alto valor (estratégicos).

---

## 🛠 Herramientas Utilizadas

• SQL  
• Power BI  
• DAX  
• Modelado de datos (Star Schema)

---

## 🎯 Objetivos del Proyecto

Este proyecto busca demostrar:

• Capacidad de transformación y modelado de datos con SQL  
• Pensamiento analítico aplicado a problemas de negocio  
• Diseño de dashboards orientados a la toma de decisiones  
• Generación de insights accionables a partir de datos  

---

## 🚀 Próximas Mejoras

• Incorporar análisis de rentabilidad  
• Implementar clasificación ABC de productos  
• Integrar modelos de forecasting de demanda  
• Automatizar recomendaciones de inventario  

---

## 🧠 Autor

**Federico Almonacid**  
Aspirante a Data Analyst | Business Intelligence | SQL | Power BI  

🔗 [LinkedIn](https://www.linkedin.com/in/federico-almonacid-a90bb9181/)
