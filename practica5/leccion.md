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

En este curso, trabajaremos con SQLite, una base de datos ligera y sencilla. Para la mayoría de los servidores web backend, PostgreSQL es una opción más lista para producción, pero SQLite es excelente para aprender y para sistemas pequeños.

## Tarea

Echemos un vistazo a cómo SQLite *no* aplica la verificación de tipos. Observa que dentro de la declaración `CREATE TABLE`, `name` se define como un campo `TEXT`.

1. Ejecuta el código y observa los resultados (¡no lo envíes todavía!)
2. En la línea `3`, cambia la cadena de texto `'Montgomery Burns'` al entero `1` y ejecuta el código

¡Observa cómo, aunque definimos `name` como un campo `TEXT`, SQLite nos permitió usar un entero! Al igual que Python y JavaScript, SQLite tiene un sistema de tipos flexible... Puedes almacenar cualquier tipo de dato en cualquier campo, independientemente de cómo lo hayas definido. *Recuerda: solo porque puedes hacer algo, no significa que debas hacerlo.*

Para pasar la tarea, envía el código en el estado alterado, donde el registro con `id` `2` tiene un `name` de `1`.

```sql
CREATE TABLE users (id INTEGER, name TEXT, age INTEGER);
INSERT into users (id, name, age) values (1, 'John Doe', 21);
INSERT into users (id, name, age) values (2, 1, 33);
SELECT * FROM users;
```

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
