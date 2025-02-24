# Clausula AS en SQL

A veces necesitamos estructurar los datos que devolvemos de nuestras consultas de una manera específica. Una cláusula `AS` nos permite crear un "alias" en nuestra consulta.

> [!NOTE]
> El alias solo existe durante la duración de la consulta.

## Palabra Clave As

Las siguientes consultas devuelven los mismos datos:

```sql
SELECT employee_id AS id, employee_name AS name
FROM employees;
```

```sql
SELECT employee_id, employee_name
FROM employees;
```

La diferencia es que los resultados de la consulta con alias tendrían los nombres de columna `id` y `name` en lugar de los nombres `employee_id` y `employee_name` con los que fueron definidas estas columnas en la tabla.

## Tarea

Un usuario nos ha pedido que encontremos todas las transacciones en su cuenta de su abuela. Pensamos que sería divertido renombrar el campo `note` a `birthday_message` porque notamos que todas las transacciones de la abuela son mensajes de cumpleaños.

Devuelve el campo `amount` y el campo `note` (renombrado a `birthday_message`) de la tabla `transactions` donde el `sender_id` es `10` (abuela).

Para completar esta tarea:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta que devuelva el campo `amount` y el campo `note` (renombrado a `birthday_message`) de la tabla `transactions` donde el `sender_id` es `10` (abuela).
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Dado que es la primera práctica de este capítulo, crea un nuevo documento de texto y añade la captura de pantalla bajo un nuevo epígrafe.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
