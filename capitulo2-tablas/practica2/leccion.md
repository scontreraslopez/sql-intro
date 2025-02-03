# Práctica de Crear Tablas

En la mayoría de las bases de datos relacionales, ¡una sola tabla no es suficiente para contener todos los datos que necesitamos! Por lo general, creamos una tabla por entidad. Por ejemplo, una aplicación de redes sociales podría tener las siguientes tablas:

- `users`
- `posts`
- `comments`
- `likes`

## Asignación

Necesitamos una tabla que rastree las transacciones entre nuestros usuarios de *CashPal*.

Crea la tabla `transactions` con los siguientes campos:

1. id - `INTEGER`
2. recipient_id - `INTEGER`
3. sender_id - `INTEGER`
4. note - `TEXT`
5. amount - `INTEGER`

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
