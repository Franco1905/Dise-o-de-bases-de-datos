SELECT DISTINCT po.nombre,po.apellido,po.DNI,po.fnac,l.nombreL
FROM
    Poda p
INNER JOIN
    Podador po
    ON p.DNI = po.DNI
INNER JOIN
    Localidad l
    ON l.codigoPostal = po.codigoPostalVive
WHERE
    (p.fecha >= '2023-01-01'
    AND
    p.fecha <= '2023-12-31')