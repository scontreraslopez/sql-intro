# Migration of the Posts Table

¡CashPal Chatter es un gran éxito! Después de varias semanas de uso, los ingenieros de CashPal han decidido que se necesitan hacer algunos cambios en nuestra tabla `posts`. Te han pedido que escribas una migración ascendente para alterar la tabla.

## Desafío

Partiendo de la base de datos creada en la anterior práctica, cópiala y escribe una migración ascendente para la tabla `posts` que logre lo siguiente.

- La columna `author_id` debe ser renombrada a `poster_id`
- Agrega una nueva columna llamada `is_edited` con un tipo `BOOLEAN`
- `DROP` la columna `is_sponsored`

¡Felicidades! Con esta lección puedes entregar la segunda tarea de profundización a través de la plataforma Aules.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
