# Encontrar Valores NULL

Puedes usar una cláusula `WHERE` para filtrar valores por si son `NULL` o no.

## IS NULL

```sql
SELECT name FROM users WHERE first_name IS NULL;
```

## IS NOT NULL

```sql
SELECT name FROM users WHERE first_name IS NOT NULL;
```

## Asignación

La forma en que almacenamos transacciones en CashPal es interesante. Almacenamos un campo `user_id` en la tabla `transactions`. Ese usuario es el “propietario” de la transacción, y un `user_id` nunca es nulo.

Siempre que el propietario de la transacción **recibe** dinero, el `sender_id` no será nulo - será el id de usuario del remitente. El `recipient_id` será nulo.

Siempre que el propietario de la transacción **envía** dinero, el `recipient_id` no será nulo - será el id de usuario del destinatario. El `sender_id` será nulo.

**Selecciona todas las filas y sus columnas de la tabla de transacciones donde el propietario de las transacciones está recibiendo dinero.**
