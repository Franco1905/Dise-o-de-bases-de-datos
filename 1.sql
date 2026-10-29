SELECT DISTINCT i.DNI,i.nombre,i.apellido,i.direccion,i.email
FROM
    Integrante i
INNER JOIN
    Banda b
    ON i.codigoB = b.codigoB
INNER JOIN
    Recital r
    ON b.codigoB = r.codigoB
WHERE
    (i.fecha_nacimiento >= '1980-01-01'
    AND
    i.fecha_nacimiento <= '1990-12-31')
    AND
    (r.fecha >= '2023-01-01'
    AND
    r.fecha <= '2023-12-31')