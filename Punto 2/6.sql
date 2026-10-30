SELECT
    po.DNI,
    po.nombre,
    po.apellido,
    po.telefono,
    po.fnac AS fechaNacimiento
FROM
    Podador po
WHERE
    po.DNI NOT IN (
        SELECT
            po.DNI
        FROM
            Podador po
            INNER JOIN Poda p ON po.DNI = p.DNI
            INNER JOIN Arbol a ON a.nroArbol = p.nroArbol
        WHERE
            a.especie <> 'coniferas'
    )