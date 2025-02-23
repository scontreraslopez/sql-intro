# Cláusula WHERE

Para seguir aprendiendo sobre las operaciones CRUD en SQL, necesitamos aprender a hacer que las instrucciones que enviamos a la base de datos sean más específicas. SQL acepta una declaración `WHERE` dentro de una consulta que nos permite ser muy específicos con nuestras instrucciones.

Si no pudiéramos especificar el registro específico que queríamos `READ`, `UPDATE` o `DELETE`, hacer consultas a una base de datos sería muy frustrante y muy ineficiente.

## Uso de una cláusula WHERE

Supongamos que tenemos más de 9000 registros en nuestra tabla `users`. A menudo queremos ver datos de usuarios específicos dentro de esa tabla sin recuperar todos los demás registros en la tabla. Podemos usar una declaración `SELECT` seguida de una cláusula `WHERE` para especificar qué registros recuperar. La declaración `SELECT` permanece igual, solo agregamos la cláusula `WHERE` al final del `SELECT`. Aquí hay un ejemplo:

```sql
SELECT name FROM users WHERE power_level >= 9000;
```

Esto seleccionará solo el campo `name` de cualquier usuario dentro de la tabla `users` donde el campo `power_level` sea mayor o igual a `9000`.

## Tarea

¡Necesitamos saber el `username` de todos los usuarios en nuestra tabla `users` que tienen privilegios de **administrador**! Recupéralos.

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta que permita recuperar el `username` de aquellos usuarios con privilegios de **administrador**.
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añádelo bajo un nuevo epígrafe en tu documento de texto.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
