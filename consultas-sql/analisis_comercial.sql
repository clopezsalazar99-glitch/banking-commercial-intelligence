-- =====================================================
-- PROYECTO: INTELIGENCIA COMERCIAL BANCARIA
-- DESCRIPCIÓN: Análisis de desempeño y segmentación
-- FUENTE: UCI Bank Marketing Dataset
-- REGISTROS: 45,211
-- =====================================================


-- 1. INDICADORES GENERALES DE DESEMPEÑO COMERCIAL

SELECT
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    SUM(CASE WHEN y = 'no' THEN 1 ELSE 0 END) AS no_contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias;


-- 2. CONVERSIÓN COMERCIAL POR OCUPACIÓN

SELECT
    job AS ocupacion,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY job
ORDER BY tasa_conversion DESC;


-- 3. CONVERSIÓN COMERCIAL POR NIVEL EDUCATIVO

SELECT
    education AS nivel_educativo,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY education
ORDER BY tasa_conversion DESC;


-- 4. CONVERSIÓN COMERCIAL POR GRUPO DE EDAD

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        WHEN age BETWEEN 56 AND 65 THEN '56-65'
        ELSE '66+'
    END AS grupo_edad,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY grupo_edad
ORDER BY tasa_conversion DESC;


-- 5. CONVERSIÓN COMERCIAL POR CANAL DE CONTACTO

SELECT
    contact AS canal_contacto,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY contact
ORDER BY tasa_conversion DESC;


-- 6. CONVERSIÓN SEGÚN NÚMERO DE CONTACTOS

SELECT
    campaign AS numero_contactos,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY campaign
ORDER BY campaign;


-- 7. DESEMPEÑO COMERCIAL POR MES

SELECT
    month AS mes,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY month
ORDER BY tasa_conversion DESC;


-- 8. CONVERSIÓN SEGÚN RESULTADO DE CAMPAÑAS ANTERIORES

SELECT
    poutcome AS resultado_anterior,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY poutcome
ORDER BY tasa_conversion DESC;


-- 9. CONVERSIÓN SEGÚN CRÉDITO HIPOTECARIO

SELECT
    housing AS credito_hipotecario,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY housing
ORDER BY tasa_conversion DESC;


-- 10. CONVERSIÓN SEGÚN PRÉSTAMO PERSONAL

SELECT
    loan AS prestamo_personal,
    COUNT(*) AS total_clientes,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS tasa_conversion
FROM campanas_bancarias
GROUP BY loan
ORDER BY tasa_conversion DESC;


-- 11. VALIDACIÓN DE CONSISTENCIA DE LOS REGISTROS

SELECT
    COUNT(*) AS total_registros,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS contrataciones,
    SUM(CASE WHEN y = 'no' THEN 1 ELSE 0 END) AS no_contrataciones,
    COUNT(DISTINCT y) AS categorias_resultado
FROM campanas_bancarias;
