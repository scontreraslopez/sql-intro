# Práctica de Migración

Cuando escribimos migraciones *reversibles*, usamos los términos "up" y "down" migrations. Una "up" migration es simplemente el conjunto de cambios que quieres hacer, como alterar/eliminar/agregar/editar una tabla de alguna manera. Una "down" migration incluye los cambios que revertirían cualquiera de los cambios de la "up" migration.

## Asignación

Agrega columnas adicionales a la tabla `transactions`. Queremos saber si la transacción se completó exitosamente entre dos usuarios. También queremos que nuestra base de datos rastree el *tipo* de transacción.

Nuestra tabla `transactions` se ve así en este momento:

| cid | name         | type    | notnull | dflt_value | pk |
|-----|--------------|---------|---------|------------|----|
| 0   | id           | INTEGER | 0       |            | 0  |
| 1   | recipient_id | INTEGER | 0       |            | 0  |
| 2   | sender_id    | INTEGER | 0       |            | 0  |
| 3   | note         | TEXT    | 0       |            | 0  |
| 4   | amount       | INTEGER | 0       |            | 0  |

Completa la siguiente migración `up`:

- Agrega la columna `BOOLEAN` `was_successful` a la tabla `transactions`.
- Agrega la columna `TEXT` `transaction_type` a la tabla `transactions`.

*Nota: `BOOL` es válido, pero la asignación espera `BOOLEAN`, así que usa `BOOLEAN` en lugar de `BOOL` para pasar esta asignación.*

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
