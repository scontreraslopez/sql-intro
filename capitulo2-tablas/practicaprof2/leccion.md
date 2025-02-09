# Migration of the Posts Table

CashPal chatter is a great success! After several weeks of use, the engineers at CashPal have decided that some changes need to be made to our `posts` table. They have asked you to write an up migration to alter the table.

## Desafío

Partiendo de la base de datos creada en la anterior práctica, cópiala y escribe una migración ascendente para la tabla `posts` que logre lo siguiente.

- La columna `author_id` debe ser renombrada a `poster_id`
- Agrega una nueva columna llamada `is_edited` con un tipo `BOOLEAN`
- `DROP` la columna `is_sponsored`

¡Felicidades! Con esta lección puedes entregar la segunda tarea de profundización a través de la plataforma Aules.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
