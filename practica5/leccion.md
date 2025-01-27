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

## Assignment

Let's take a look at how SQLite does _not_ enforce type-checking. Notice that within the `CREATE TABLE` statement, `name` is defined as a `TEXT` field.

1. Run the code and take a look at the results (don't submit yet!)
2. On line `3`, change the text string `'Montgomery Burns'` to the integer `1` and run the code

Notice how even though we defined `name` as a `TEXT` field, SQLite allowed us to use an integer! Like Python and JavaScript, SQLite has a loose type system... You can store any type of data in any field, regardless of how you defined it. _Remember: just because you can do something, doesn't mean you should!_

To pass the assignment, submit the code in the altered state, where the record with `id` `2` has a `name` of `1`.

```sql
CREATE TABLE users (id INTEGER, name TEXT, age INTEGER);
INSERT into users (id, name, age) values (1, 'John Doe', 21);
INSERT into users (id, name, age) values (2, 1, 33);
SELECT * FROM users;
```

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
