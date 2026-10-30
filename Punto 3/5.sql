/* necesito las tablas banda e integrante, puedo agrupar por
 idBanda  y usar un HAVING demas de un SUM*/
SELECT
    b.nombreBanda,
    genero_musical,
    anio_creacion AS añoCreacion
FROM
    Banda b
WHERE
    b.codigoB IN (
        SELECT b.codigoB
        FROM
            Banda B
            NATURAL JOIN
            Integrante i
        GROUP BY 
            b.codigoB
        HAVING
            COUNT(*) > 5
    )