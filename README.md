# Inteligencia Comercial Bancaria

## Descripción del proyecto

Proyecto de análisis de información bancaria enfocado en evaluar el desempeño comercial, identificar patrones de comportamiento de clientes y analizar la efectividad de campañas comerciales.

Se utiliza el conjunto de datos Bank Marketing del UCI Machine Learning Repository para construir indicadores, identificar segmentos con diferentes niveles de conversión y generar recomendaciones basadas en datos.

**Nota:** El conjunto de datos corresponde a campañas comerciales de una institución bancaria portuguesa. No contiene información de Bankaool ni de clientes bancarios mexicanos.

## Objetivos

- Analizar información de clientes y campañas comerciales.
- Evaluar el desempeño de las estrategias comerciales.
- Construir indicadores clave de desempeño (KPIs).
- Identificar segmentos de clientes con mayor conversión.
- Analizar los factores asociados con la contratación de productos.
- Generar recomendaciones comerciales basadas en datos.

## Herramientas

- **Python:** limpieza, transformación y análisis exploratorio.
- **SQL:** consultas, validación y construcción de indicadores.
- **Power BI:** visualización y seguimiento de KPIs.

## Fuente de datos

**Bank Marketing Dataset**

- Repositorio: UCI Machine Learning Repository.
- Registros: 45,211.
- Variables: 17.
- Enlace: https://archive.ics.uci.edu/dataset/222/bank+marketing

## Estructura del proyecto

```text
banking-commercial-intelligence/
├── datos/
│   ├── originales/
│   └── procesados/
│       └── bank_marketing_limpio.csv
├── notebooks/
│   └── analisis_comercial_bancario.ipynb
├── consultas-sql/
├── power-bi/
├── informes/
├── README.md
├── .gitignore
└── LICENSE
