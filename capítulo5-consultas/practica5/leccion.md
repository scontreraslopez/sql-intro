# Operadores Lógicos - AND

A menudo necesitamos usar **múltiples** condiciones para recuperar la información exacta que queremos. Podemos comenzar a estructurar consultas mucho más complejas utilizando múltiples condiciones juntas para reducir los resultados de búsqueda de nuestra consulta.

El operador lógico `AND` se puede usar para reducir aún más nuestros conjuntos de resultados.

## Operador AND

```sql
SELECT product_name, quantity, shipment_status
FROM products
WHERE shipment_status = 'pending'
AND quantity BETWEEN 0 and 10;
```

Este operador solo recupera registros donde **tanto** el `shipment_status` es "pending" **Y** la `quantity` está entre `0` y `10`.

## Operadores de Igualdad

Todos los siguientes operadores son compatibles con SQL. El `=` es el principal a tener en cuenta, ¡no es `==` como en muchos otros lenguajes! SQLite permite `==` pero no es una buena costumbre, ya que otros dialectos de SQL no reconocerán `==` como sintaxis válida.

- `=` Igual a
- `<` Menor que
- `>` Mayor que
- `<=` Menor o igual a
- `>=` Mayor o igual a

## Tarea

¡Las restricciones legales en Canadá han cambiado! La forma en que tenemos que manejar las transacciones de CashPal de menores canadienses es más estricta. ¡Necesitamos encontrar a todos esos usuarios para ver cuántos usuarios se ven afectados por este cambio!

Escribe una consulta que recupere todos los campos de la tabla `users` que sean de Canadá (`CA`) y tengan menos de `18` años.

Para ello:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta que encuentre los canadienses menores de 18 años de acuerdo a las instrucciones dadas.
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añade la captura de pantalla a tu documento de texto bajo un nuevo epígrafe.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
