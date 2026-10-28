SELECT a.especie,a.anios,a-calle,a.nro,l.nombreL
FROM
    Arbol a
INNER JOIN
    Localidad l
    ON a.codigoPostal = l.codigoPostal
INNER JOIN
    Poda p
    ON p.nroArbol = a.nroArbol
WHERE
    p.fecha >= '2022-01-01' 
    AND 
    p.fecha <= '2022-12-31'
    