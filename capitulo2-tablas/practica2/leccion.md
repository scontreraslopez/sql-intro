# Práctica de Crear Tablas

En la mayoría de las bases de datos relacionales, ¡una sola tabla no es suficiente para contener todos los datos que necesitamos! Por lo general, creamos una tabla por cada entidad. Por ejemplo, una aplicación de redes sociales podría tener las siguientes tablas:

- `users`
- `posts`
- `comments`
- `likes`

## Asignación

Necesitamos una tabla que rastree las transacciones entre nuestros usuarios de *CashPal*.

Copia la base de datos que has credo en la anterior lección y sobre esta, crea ahora la tabla `transactions` con los siguientes campos:

1. id - `INTEGER`
2. recipient_id - `INTEGER`
3. sender_id - `INTEGER`
4. note - `TEXT`
5. amount - `INTEGER`

Por otro lado, sobre el documento de texto creado en la anterior práctica, generarás un epígrafe nuevo para esta lección en la que incluirás su captura de pantalla. Recuerda que puedes añadir `PRAGMA TABLE_INFO(TABLENAME);` al final de tu script para obtener información sobre la tabla.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
