SELECT 
    i.DNI,
    i.nombre,
    i.apellido,
    i.mail
FROM
    Integrante i
NATURAL JOIN
    Banda b
WHERE
    b.codigoB NOT IN (
        SELECT
            /*
            debo seleccionar los id de todas las bandas que NO estuvieron en
            el escenario 'Gustavo Cerati'
            */ 
             b.codigoB
        FROM
            Banda b
        WHERE
            b.codigoB NOT IN(
                SELECT 
                    b.codigoBanda
                FROM
                    Banda b
                NATURAL JOIN
                    Recital r
                NATURAL JOIN
                    Escenario e
                WHERE
                    e.nombre_escenario = 'Gustavo Cerati'
                )
        UNION 
        (SELECT
            /*
            debo seleccionar los id de todas las bandas que NO estuvieron en
            el escenario 'Carlos Gardel'
            */ 
             b.codigoB
        FROM
            Banda b
        WHERE
            b.codigoB NOT IN(
                SELECT 
                    b.codigoBanda
                FROM
                    Banda b
                NATURAL JOIN
                    Recital r
                NATURAL JOIN
                    Escenario e
                WHERE
                    e.nombre_escenario = 'Carlos Gardel'
                )
        )  
    )

/* la union de todos los codigos de las bandas que nunca tocaron en el escenario
gustavo cerati con todas las bandas que nunca tocaron en el escenario carlos
gardel. juntos, serian los codigos de todas las bandas que jamas tocaron en 
ninguno de ellos. en teoria, y siguiendo la teoria de conjuntos, estariamos 
aplicando ley de demorgan, ya que: A.B = -(-(A.B)) = -((-A)+(-B))/*