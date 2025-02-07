# Intro to Migrations

Una base de datos migration es un conjunto de cambios a una base de datos relacional. De hecho, las sentencias `ALTER TABLE` que hicimos en el último ejercicio fueron ejemplos de migrations.

Las migrations son útiles cuando se pasa de un estado a otro, se corrigen errores o se adapta una base de datos a cambios.

Las **buenas** migrations son cambios pequeños, incrementales e idealmente **reversibles** a una base de datos. Como puedes imaginar, cuando se trabaja con bases de datos grandes, ¡hacer cambios puede ser aterrador! Tenemos que ser cuidadosos al escribir migrations de bases de datos para no romper ningún sistema que dependa del esquema antiguo de la base de datos.

<p>
    <video src="https://storage.googleapis.com/qvault-webapp-dynamic-assets/lesson_videos/database-migrations.mp4" controls width="1080" poster="https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/gUNRY9t.png">
        <track kind="subtitles" src="subs_es.srt" srclang="es" label="Spanish" default>
    </video>
</p>

<details open="">
<summary>
## Example of a Bad Migration
</summary>

Si el backend de CashPal ejecuta periódicamente una consulta como `SELECT * FROM people`, y ejecutamos una migration que cambia el nombre de la tabla de `people` a `users` **sin actualizar el código**, ¡la aplicación se romperá! Intentará obtener datos de una tabla que ya no existe.

Una solución simple a este problema sería desplegar nuevo código que use una nueva consulta:

```sql
SELECT * FROM users;