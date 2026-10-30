SELECT
    e.nombre_escenario,
    COUNT(*)
FROM
    Recital r
    INNER JOIN Escenario e ON r.nroEscenario = e.nroEscenario
GROUP BY
    e.nombre_escenario
HAVING
    r.fecha >= '2024-01-01'
    AND r.fecha <= '2024-12-31' -- revision pendiente
    -- ERROR: "Error al ejecutar consulta (1054): Unknown column 'r.fecha' in 'having clause'"