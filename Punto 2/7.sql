SELECT
  DISTINCT a.especie
FROM
  Arbol a
WHERE
  a.especie IN (
    SELECT
      a.especie
    FROM
      Arbol a
      INNER JOIN Localidad l ON a.codigoPostal = l.codigoPostal
    WHERE
      l.nombreL = 'La Plata'
  )
  AND a.especie IN (
    SELECT
      a.especie
    FROM
      Arbol a
      INNER JOIN Localidad l ON a.codigoPostal = l.codigoPostal
    WHERE
      l.nombreL = 'Salta'
  )