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
