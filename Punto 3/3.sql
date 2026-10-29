SELECT 
    b.nombreBanda,
    r.fecha,
    r.hora,
    e.nombre_escenario,
    e.ubicacion
FROM
    Banda b
NATURAL JOIN
    Recital r
NATURAL JOIN
    Escenario e
WHERE
    r.fecha = '2023-12-04'