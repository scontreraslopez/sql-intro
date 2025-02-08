# Intro to Migrations

Una base de datos migration es un conjunto de cambios a una base de datos relacional. De hecho, las sentencias `ALTER TABLE` que hicimos en el último ejercicio fueron ejemplos de migrations.

Las migrations son útiles cuando se pasa de un estado a otro, se corrigen errores o se adapta una base de datos a cambios.

Las **buenas** migrations son cambios pequeños, incrementales e idealmente **reversibles** a una base de datos. Como puedes imaginar, cuando se trabaja con bases de datos grandes, ¡hacer cambios puede ser aterrador! Tenemos que ser cuidadosos al escribir migrations de bases de datos para no romper ningún sistema que dependa del esquema antiguo de la base de datos.

Para descargar el vídeo de la lección, haz clic con el botón derecho en el siguiente enlace y selecciona "Guardar enlace como...":

[Descargar vídeo](https://storage.googleapis.com/qvault-webapp-dynamic-assets/lesson_videos/database-migrations.mp4)

Para descargar los subtítulos en español, haz clic con el botón derecho en el siguiente enlace y selecciona "Guardar enlace como...":

[Descargar subtítulos](database_migrations.srt)

Una vez descargados ambos, ábrelo con VLC para que automáticamente se muestren los subtítulos acompañando al vídeo.

Si el backend de CashPal ejecuta periódicamente una consulta como `SELECT * FROM people`, y ejecutamos una migration que cambia el nombre de la tabla de `people` a `users` **sin actualizar el código**, ¡la aplicación se romperá! Intentará obtener datos de una tabla que ya no existe.

Una solución simple a este problema sería desplegar nuevo código que use una nueva consulta:

```sql
SELECT * FROM users;
```

Y desplegaríamos ese código a producción inmediatamente después de la migration.

## Tarea

Para la entrega, sobre el documento de texto creado en la práctica1, generar un epígrafe para este ejercicio. Aquí, responde a las siguientes preguntas tipo test con la respuesta correcta.

- ¿Cuál de las siguientes afirmaciones sobre las migrations es FALSA?
  - a) Puedes ser rápido y descuidado al escribir migrations - una mala migration es fácil de arreglar
  - b) Las migrations bien escritas son reversibles
  - c) Las migrations son cambios incrementales realizados en una base de datos

- ¿Las migrations de bases de datos a menudo estarán acopladas con actualizaciones del código de la aplicación?
  - a) Sí
  - b) No

- ¿Por qué las 'buenas' migrations se escriben de manera reversible?
  - a) No lo son
  - b) Para que si algo sale mal, los cambios puedan revertirse
  - c) Porque siempre debes revertir los cambios antes de aplicar nuevos

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev

