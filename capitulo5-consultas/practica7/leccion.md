# IN

Otra variación de la cláusula `WHERE` que podemos utilizar es el operador `IN`. `IN` devuelve `true` o `false` si el primer operando coincide con *cualquiera* de los valores en el segundo operando. El operador `IN` es una abreviatura para múltiples condiciones `OR`.

Estas dos consultas son equivalentes:

```sql
SELECT product_name, shipment_status
FROM products
WHERE shipment_status IN ('shipped', 'preparing', 'out of stock');
```

```sql
SELECT product_name, shipment_status
FROM products
WHERE shipment_status = 'shipped'
  OR shipment_status = 'preparing'
  OR shipment_status = 'out of stock';
```

¡Esperamos que empieces a ver cómo consultar datos específicos utilizando cláusulas SQL afinadas ayuda a revelar información importante! Cuanto más grande se vuelve una tabla, más difícil se vuelve analizarla sin consultas adecuadas.

## Tarea

Queremos saber cuáles de nuestros usuarios son de América del Norte. Escribe una declaración `SELECT` que devuelva los campos `name`, `age` y `country_code` para cada usuario dentro de `US`, `CA` o `MX`.

Para ello:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta, utilizando la función IN, que devuelva los usuarios de América del Norte de acuerdo a las instrucciones dadas.
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añade la captura de pantalla a tu documento de texto bajo un nuevo epígrafe.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
