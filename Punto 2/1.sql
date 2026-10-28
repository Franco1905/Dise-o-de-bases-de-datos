SELECT a.especie,a.anios,a.calle,a.nro,l.nombreL
FROM
    Arbol a
INNER JOIN
    Poda p
    ON a.nroArbol = p.nroArbol
INNER JOIN
    Podador po
    ON p.DNI = po.DNI
INNER JOIN
    Localidad l
    ON l.codigoPostal = a.codigoPostal
WHERE
    (po.nombre = 'Juan'
    AND 
    po.apellido = 'Perez')
    OR
    (po.nombre = Jose
    AND
    po.apellido = 'Garcia')