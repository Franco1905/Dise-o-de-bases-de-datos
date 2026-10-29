SELECT DISTINCT a.especie
FROM
    Arbol a
WHERE
    a.especie NOT IN (SELECT a.especie 
                      FROM 
                        Arbol a
                      INNER JOIN
                        Localidad l
                        ON a.codigoPostal = l.codigoPostal
                       WHERE
                        a.nroArbol NOT IN (
                          SELECT nroArbol
                          FROM
                            Arbol a
                          INNER JOIN
                            Localidad l
                            ON a.codigoPostal = l.codigoPostal
                          WHERE
                            l.nombreL = 'La Plata'
                        )
                      )
                      UNION  
                      (SELECT a.especie 
                      FROM 
                          Arbol a
                      INNER JOIN
                        Localidad l
                        ON a.codigoPostal = l.codigoPostal
                      WHERE
                        a.nroArbol NOT IN (
                          SELECT nroArbol
                          FROM
                            Arbol a
                          INNER JOIN
                            Localidad l
                            ON a.codigoPostal = l.codigoPostal
                          WHERE
                            l.nombreL = 'Salta')
                      )  