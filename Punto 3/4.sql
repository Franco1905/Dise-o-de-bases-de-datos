SELECT
    i.DNI,
    i.nombre,
    i.apellido,
    i.email
FROM
    Integrante i
    INNER JOIN Banda b ON b.codigoB = i.codigoB
WHERE
    b.codigoB IN (
        (
            SELECT
                b.codigoB
            FROM
                Banda b
                INNER JOIN Recital r ON r.codigoB = b.codigoB
                INNER JOIN Escenario e ON e.nroEscenario = r.nroEscenario
            WHERE
                e.nombre_escenario = 'Gustavo Cerati'
        )
    )
    AND b.codigoB IN(
        SELECT
            b.codigoB
        FROM
            Banda b NATURAL
            JOIN Recital r NATURAL
            JOIN Escenario e
        WHERE
            e.nombre_escenario = 'Carlos Gardel'
    )