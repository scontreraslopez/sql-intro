# Restricción Faltante

CashPal tiene una tabla llamada `banking_institutions` que almacena información relacionada con los bancos de la zona. Un par de usuarios de CashPal han llamado y dejado mensajes preocupados porque han notado información incorrecta de los bancos en algunos de sus extractos. Te han pedido que revises la tabla `banking_institutions` y averigües si hay algo mal con las restricciones de la tabla.

## Registros Sospechosos

| id | nombre               | ubicación       | número_de_ruta |
|----|----------------------|-----------------|----------------|
| 1  | Bank of Boots        | San Diego       | 4567777        |
| 1  | Central Savings      | Los Ángeles     | 1234567        |
| 2  | Metro Trust Bank     | San Francisco   | 7890123        |
| 3  | Star Finance Corp    | Sacramento      | 5678901        |
| 3  | Golden State Bank    | San José        | 9876543        |

## Desafío

Usando el archivo `up.sql` y el ejemplo de salida anterior, determina a qué campo le falta una restricción importante. Debido a que SQLite no admite agregar restricciones con `ALTER TABLE`, tendrás que crear una nueva tabla llamada `banks`. Debe tener todos los mismos campos que la tabla original, pero actualizados con la restricción faltante. No te preocupes por insertar ningún registro, aprenderemos a hacerlo más adelante.

*Nota: `INT` es válido, pero la tarea espera `INTEGER`, así que usa `INTEGER` en lugar de `INT` para pasar esta tarea.*

> [!TIP]
> Recuerda que puedes ejecutar `PRAGMA TABLE_INFO('banks');` para imprimir en la salida la definición de la tabla.

Para la entrega, crea un nuevo documento de texto y genera un generar un epígrafe para este ejercicio. Aquí, tomad una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev

