SELECT a.especie,a.anios,a.calle,a.nro,l.nombreL as localidad
FROM
    Arbol a
INNER JOIN
    Localidad l
    ON a.codigoPostal = l.codigoPostal
WHERE 
    a.nroArbol NOT IN ( SELECT a.nroArbol
                        FROM 
                            Arbol a
                        INNER JOIN
                            Poda p
                            ON a.nroArbol = p.nroArbol)
