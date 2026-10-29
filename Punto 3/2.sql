SELECT  DISTINCT
    b.nombreBanda,
    b.genero_musical as genero,
    b.anio_creacion as añoCreacion
FROM
    Banda b
INNER JOIN
    Recital r
    ON b.codigoB = r.codigoB
WHERE 
    b.codigoB NOT IN (
        SELECT 
            b.codigoB
        FROM
            Banda b
        INNER JOIN
            Recital r
            ON b.codigoB = r.codigoB
        WHERE
            fecha >= '2022-01-01'
            AND
            fecha <= '2022-12-31'    
    )
    AND
        fecha >= '2023-01-01'
        AND
        fecha <= '2023-12-31'