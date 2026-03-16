# 📊 Análisis de Ventas y Rotación de Inventario

## 📊 Dashboard Preview

![Sales Overview](dashboard_images/overview.png)

![Branch Performance](dashboard_images/branches.png)

![Product Analysis](dashboard_images/products.png)

![Inventory Rotation](dashboard_images/inventory.png)

## 🧾 Descripción del Proyecto

Este proyecto analiza el desempeño comercial y el comportamiento de los productos en múltiples sucursales utilizando un dataset simulado inspirado en un problema real del sector retail.

El objetivo principal fue **practicar SQL para el procesamiento y transformación de datos**, utilizando **Power BI para desarrollar visualizaciones analíticas y generar insights de negocio**.

El análisis se enfoca en identificar:

• 📈 Tendencias de ventas  
• 🧮 Contribución de productos a la facturación (análisis Pareto)  
• 🏬 Diferencias de desempeño entre sucursales  
• 📦 Segmentación de productos por volumen y facturación  
• 🔄 Oportunidades de rotación de inventario entre sucursales

---

## 💼 Problema de Negocio

Las empresas retail con múltiples sucursales suelen enfrentar desafíos como:

• Demanda desigual de productos entre tiendas  
• Inventario con baja rotación en ciertas ubicaciones  
• Dificultad para identificar los productos que realmente impulsan las ventas

Este proyecto simula un escenario real donde se analiza información de ventas para detectar **oportunidades de optimización del inventario y patrones de comportamiento de los productos**.

---

## 🗂 Dataset

El dataset es **simulado**, pero está inspirado en un contexto real de negocio.

Características del dataset:

• 🏬 4 sucursales  
• 📦 1.728 productos únicos  
• 📑 23.649 registros de ventas  
• 🧾 ~9.400 transacciones  
• 📦 ~71.000 unidades vendidas  

💰 Facturación total analizada:

**$186.239.484**

---

## 🧱 Pipeline de Datos (SQL)

Uno de los objetivos principales del proyecto fue **practicar SQL para el procesamiento y limpieza de datos**.

El pipeline de datos incluye:

1️⃣ Ingesta de datos crudos  
2️⃣ Limpieza y estandarización  
3️⃣ Creación de tablas de hechos y dimensiones  
4️⃣ Preparación de un modelo analítico para herramientas de BI

La estructura final sigue un modelo **⭐ Star Schema**.

Tablas creadas:

### Tabla de hechos

`fact_sales`

### Tablas de dimensión

`dim_products`  
`dim_branches`  
`dim_time`

Este modelo permite realizar análisis eficientes en Power BI.

---

## 🧩 Modelo de Datos

El modelo implementado en Power BI sigue una arquitectura **Star Schema**.

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

Este modelo facilita el análisis agregado y escalable.

---

## 📊 Estructura del Dashboard

El dashboard en Power BI se divide en **cuatro secciones analíticas**.

---

### 1️⃣ Resumen de Ventas

Indicadores generales del desempeño comercial:

• 💰 Facturación total  
• 📦 Unidades vendidas  
• 🧾 Transacciones totales  
• 📈 Evolución mensual de ventas  
• 🧮 Ticket promedio mensual  

---

### 2️⃣ Desempeño por Sucursal

Análisis del rendimiento comercial entre sucursales:

• 💰 Facturación por sucursal  
• 📦 Unidades vendidas por sucursal  
• 🌡 Mapa de intensidad de ventas mensual

Esto permite identificar diferencias de demanda entre ubicaciones.

---

### 3️⃣ Rendimiento de Productos

Evaluación del aporte de cada producto al negocio:

• 🏆 Productos líderes en facturación  
• 📦 Productos líderes en unidades vendidas  
• 📊 Análisis Pareto de concentración de ingresos

Este análisis permite observar cómo un pequeño grupo de productos genera gran parte de la facturación.

---

### 4️⃣ Análisis de Rotación de Inventario

Esta sección identifica **oportunidades de traslado de inventario entre sucursales**.

Se comparan las velocidades de venta de los productos en cada tienda y se calcula:

• 🥇 Sucursal con mayor rotación  
• 🐢 Sucursal con menor rotación  
• 📉 Diferencia de velocidad  
• 🔄 Recomendación de traslado

Esto permite generar **insights accionables para optimizar el inventario**.

---

## 🔎 Insights Principales

• 📊 Las ventas siguen una distribución **Pareto**, donde una pequeña cantidad de productos genera gran parte de la facturación.

• 🏬 La demanda de productos varía significativamente entre sucursales.

• 🔄 Algunos productos presentan **alta rotación en una sucursal y baja rotación en otra**, lo que sugiere oportunidades de redistribución de inventario.

• 📦 La segmentación permite identificar tanto **productos de alto volumen** como **productos de alto valor**.

---

## 🛠 Herramientas Utilizadas

• SQL  
• Power BI  
• DAX  
• Modelado de Datos (Star Schema)

---

## 🎯 Objetivos del Proyecto

Demostrar:

• 💻 Habilidades de SQL para transformación de datos  
• 🧠 Pensamiento analítico aplicado a datos de negocio  
• 📊 Diseño de dashboards orientados a toma de decisiones  
• 📈 Capacidad de generar insights accionables

---

## 🚀 Posibles Mejoras

• Incorporar análisis de márgenes de ganancia  
• Implementar clasificación ABC de productos  
• Integrar modelos de forecasting  
• Simular recomendaciones automáticas de inventario