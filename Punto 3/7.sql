-- solamente tengo que juntar bandas con escenarios y recitales, y luego 
SELECT
    b.nombreBanda,
    b.genero_musical,
    b.anio_creacion AS añoCreacion
FROM
    Recital r
    INNER JOIN Banda b ON b.codigoB = r.codigoB
    INNER JOIN Escenario e ON e.nroEscenario = r.nroEscenario
WHERE
    e.cubierto = TRUE
    AND (
        r.fecha >= '2023-01-01'
        AND r.fecha <= '2023-12-31'
    )