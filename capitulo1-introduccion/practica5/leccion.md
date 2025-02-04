# Lección 5 -  Comparando bases de datos SQL

## Enlace

<https://github.com/scontreraslopez/sql-intro/blob/main/practica5/leccion.md>

Vamos a profundizar y hablar sobre algunas de las bases de datos SQL más populares y qué las hace diferentes entre sí. Algunas de las bases de datos SQL más populares en este momento son:

- [PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL)
- [MySQL](https://en.wikipedia.org/wiki/MySQL)
- [Microsoft SQL Server](https://db-engines.com/en/system/Microsoft+SQL+Server)
- [SQLite](https://en.wikipedia.org/wiki/SQLite)
- [And many others](https://en.wikipedia.org/wiki/List_of_relational_database_management_systems)

*Fuente: [db-engines.com](https://db-engines.com/en/ranking)*

Aunque todas estas bases de datos utilizan SQL, cada una define reglas, prácticas y estrategias específicas que las diferencian de sus competidores.

## SQLite vs. PostgreSQL

Personalmente, SQLite y PostgreSQL son mis favoritos de la lista anterior. PostgreSQL es una base de datos SQL de código abierto, muy poderosa y lista para producción. SQLite es una base de datos ligera, embebible y de código abierto. Usualmente elijo una de estas tecnologías si estoy trabajando con SQL.

SQLite es un sistema de gestión de bases de datos (DBMS) sin servidor que tiene la capacidad de ejecutarse dentro de aplicaciones, mientras que PostgreSQL utiliza un modelo Cliente-Servidor y requiere que un servidor esté instalado y escuchando en una red, similar a un servidor HTTP.

Ver una [comparativa completa aquí](https://db-engines.com/en/system/PostgreSQL%3BSQLite).

## Utilizamos SQLite

En esta unidad, trabajaremos con SQLite, una base de datos ligera y sencilla. Para la mayoría de los servidores web backend, PostgreSQL es una opción más lista para producción, pero SQLite es excelente para aprender y para sistemas pequeños.

## Tarea

Echemos un vistazo a cómo SQLite *no* aplica la verificación de tipos. Observa que dentro de la declaración `CREATE TABLE`, `name` se define como un campo `TEXT`.

1. En DB Browser for SQLite, crea una nueva base de datos.
2. En la parte inferior de esta tarea encontraras un segmento de código SQL. Cópialo y pégalo en la pestaña de "Ejecutar SQL" de DB Browser for SQLite. También puedes abrir el archivo "original_query.sql" en DB Browser for SQLite para poder hacerlo más cómodamente desde la VM. Puedes repasar [Lección 1](../practica1/leccion.md) para ver cómo abrir un archivo SQL en DB Browser for SQLite.
3. Ejecuta el código y observa los resultados. La tabla `users` se creará y se insertarán dos registros. Tal y cómo esperamos ya que los valores coinciden con la definición id entero, name texto y age entero.
4. Ahora, en la línea `4`, cambia la cadena de texto `'Montgomery Burns'` al entero `1` y ejecuta el código.

¡Observa cómo, aunque definimos `name` como un campo `TEXT`, SQLite nos permitió usar un entero! Al igual que Python y JavaScript, SQLite tiene un sistema de tipos flexible... Puedes almacenar cualquier tipo de dato en cualquier campo, independientemente de cómo lo hayas definido. *Recuerda: solo porque puedes hacer algo, no significa que debas hacerlo.*

Toma una captura de pantalla de la query modificada y el resultado de su ejecución, donde el registro con `id` `2` tiene un `name` de `1`.

Para la entrega, sobre el documento de texto creado en la práctica1, generar un epígrafe para este ejercicio. Aquí, tomad una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

```sql
DROP TABLE IF EXISTS users;
CREATE TABLE users (id INTEGER, name TEXT, age INTEGER);
INSERT into users (id, name, age) values (1, 'John Doe', 21);
INSERT into users (id, name, age) values (2, 'Montgomery Burns', 33);
SELECT * FROM users;
```

¡Finalmente: Ya puedes entregar el documento de texto con las prácticas 1-5 completadas por aules! Felicidades por llegar hasta aquí.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
