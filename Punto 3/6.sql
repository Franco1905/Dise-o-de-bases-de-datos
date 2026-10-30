SELECT
    e.nombre_escenario,
    e.ubicacion,
    e.descripcion
FROM
    Escenario e
WHERE
    e.nroEscenario NOT IN (
        SELECT
            e.nroEscenario
        FROM
            Recital r
            INNER JOIN Escenario e ON r.nroEscenario = e.nroEscenario
            INNER JOIN Banda b ON r.codigoB = b.codigoB
        WHERE
            b.genero_musical <> 'rock and roll'
    )
ORDER BY
    e.nombre_escenario -- NO retorna ninguna tupla