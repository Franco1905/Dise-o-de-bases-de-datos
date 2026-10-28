SELECT DISTINCT po.DNI,po.nombre,po.apellido,po.fnac,l.nombreL as localidad
FROM 
    Podador po
INNER JOIN 
    Localidad l
    ON po.codigoPostalVive = l.codigoPostal
INNER JOIN 
     Poda p
     ON p.DNI = po.DNI
WHERE 
    po.apellido like '%ata'
    AND
    p.fecha >= '2024-01-01'
    AND
    p.fecha <= '2024-12-31'
ORDER BY 
    po.nombre,po.apellido 
