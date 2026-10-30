SELECT l.nombreL,l.descripcion,l.nroHabitantes
FROM
    Localidad l
WHERE
    l.codigoPostal IN ( SELECT l.codigoPostal
                        FROM
                            Localidad l
                        INNER JOIN
                            Arbol a
                            ON a.codigoPostal = l.codigoPostal
                        GROUP BY
                            l.codigoPostal
                        HAVING
                            COUNT(*) < 5) 
