# Lección 1 -  ¿Qué es SQL?

## Enlace

<https://github.com/scontreraslopez/sql-intro/blob/main/practica1/leccion.md>

## Introducción

El lenguaje de consulta estructurado, o SQL, es el principal lenguaje de programación utilizado para administrar e interactuar con [bases de datos relacionales](https://cloud.google.com/learn/what-is-a-relational-database). SQL puede realizar varias operaciones, como crear, actualizar, leer y eliminar registros dentro de una base de datos (CRUD).

## Vídeo de la lección

Espacio para ver el vídeo what-is-sql.mp4

## CashPal

¡En este curso, construiremos la base de datos para un clon ficticio de PayPal llamado CashPal ! ¡Almacenar información relacionada con el dinero, las transacciones y la identidad de las personas es muy importante! Por lo tanto, tendremos que asegurarnos de utilizar las convenciones adecuadas para crear una arquitectura de base de datos segura y confiable que aporte tranquilidad a nuestros usuarios.

## Tarea

He proporcionado una instrucción SQL simple para usted que recupera algunos registros de una tabla. Sin embargo, no hay una tabla *people*, la tabla en nuestra base de datos se llama *users*. Corrija el error de la siguiente sentencia cambiando *people* por *users* dentro de la declaración del SELECT.

```sql
SELECT * FROM people;
```

Ejecuta el script tester.sh para crear la base de datos. A continuación, abre la base de datos test.db con sqlitebrowser, corrige la query que aparece arriba y comprueba que se recuperan correctamente los registros.

**Nota**: También es posible abrir el archivo sql broken_query.sql en sqlitebrowser y corregir la query desde allí. Para ello utilizar el botón de abrir archivo sql
![alt text](/assets/images/abrir_archivo_sql.png)

La entrega de las 5 primeras prácticas de hará en un único documento de texto. Para ello crear el documento **practica_bbdd1_sql_apellidos_nombre**..

Generaremos un epígrafe para cada una de las prácticas, donde pondremos la respuesta de cada ejercicio.

Para este primer ejercicio, corrige la query y toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
