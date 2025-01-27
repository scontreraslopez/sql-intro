# Lección 3 -  ¿Qué bases de datos utilizan SQL?

## Enlace

<https://github.com/scontreraslopez/sql-intro/blob/main/practica3/leccion.md>

## Introducción

SQL es solo un lenguaje de consulta. Normalmente lo usas para interactuar con una tecnología de base de datos específica. Por ejemplo:

- SQLite
- PostgreSQL
- MySQL
- CockroachDB
- Oracle
- etc...

Aunque muchas bases de datos diferentes utilizan el lenguaje SQL, la mayoría de ellas tendrá su propio dialecto. Es fundamental entender que no todas las bases de datos son iguales. Solo porque una base de datos compatible con SQL haga las cosas de una manera determinada, no significa que todas las bases de datos compatibles con SQL seguirán esos mismos patrones exactos.

## Usamos SQLite

En este curso, usaremos SQLite específicamente. SQLite es excelente para proyectos embebidos, navegadores web y proyectos de juguete. Es liviano, pero tiene funcionalidades limitadas en comparación con tecnologías de SQL más comunes como PostgreSQL o MySQL.

¡Te avisaremos cada vez que alguna funcionalidad con la que estemos trabajando sea única de SQLite!

## Tarea

Una forma en que SQLite es un poco diferente es que almacena valores booleanos como enteros: los enteros 0 y 1.

- 0 = falso
- 1 = verdadero

**Crea una query que seleccione todos los ids, nombres y flags is_admin de la tabla de usuarios.**

Ejecuta el script tester.sh para crear la base de datos. A continuación, abre la base de datos test.db con sqlitebrowser, completa la query solicitada y comprueba que se recuperan correctamente los registros.

Para la entrega, crear un documento de texto llamado **practica3_sql_apellidos_nombre** con la query solicitada y una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
