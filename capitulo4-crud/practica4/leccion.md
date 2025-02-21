# Auto Incremento

Muchos dialectos de SQL soportan una característica de `AUTO INCREMENT`. Al insertar registros en una tabla con `AUTO INCREMENT` habilitado, la base de datos asignará el siguiente valor *automáticamente*. En SQLite, un campo entero `id` que tiene la restricción `PRIMARY KEY` se incrementará automáticamente por defecto.

## Id’s

Dependiendo de cómo esté configurada tu base de datos, puedes estar usando `id`s tradicionales o puedes estar usando [UUIDs](https://es.wikipedia.org/wiki/Identificador_%C3%BAnico_universal). SQL no soporta el auto incremento de un `uuid`, por lo que si tu base de datos los está usando, tu servidor tendrá que manejar el cambio de uuid’s para cada registro.

## Usando `AUTO INCREMENT` en SQLite

Estamos usando `id`s tradicionales en nuestra base de datos, por lo que podemos aprovechar la característica de auto incremento. Diferentes dialectos de SQL implementarán esta característica de manera diferente, pero en SQLite cualquier columna que tenga la restricción `INTEGER PRIMARY KEY` se incrementará automáticamente. ¡Así que podemos omitir el campo `id` dentro de la declaración `INSERT**P:** ` y permitir que la base de datos agregue ese campo automáticamente!

## Tarea

Agreguemos más registros a nuestra tabla `users`, pero permitamos que la base de datos incremente automáticamente el campo `id`. 

Primero ejecuta `bash tester.sh` para inicializar la base de datos. A continuación escribe las sentencias que nos permitan agregar los siguientes registros a la base de datos.

### Registro 1
- `name`: Lance
- `age`: 20
- `country_code`: US
- `username`: LanChr
- `password`: bootdevisbest
- `is_admin`: false

### Registro 2
- `name`: Tiffany
- `age`: 28
- `country_code`: US
- `username`: Tifferoon
- `password`: autoincrement
- `is_admin`: true

Por último toma una captura de pantalla con la solución y añadela a un nuevo epígrafe de tu documento de texto.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev

