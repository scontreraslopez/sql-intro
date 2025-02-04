# Creando una Tabla

Para crear una nueva tabla en una base de datos, utiliza la sentencia `CREATE TABLE` seguida del nombre de la tabla y los campos que deseas en la tabla.

```sql
CREATE TABLE employees (id INTEGER, name TEXT, age INTEGER, is_manager BOOLEAN, salary INTEGER);
```

Cada nombre de campo va seguido de su *tipo de dato*. Veremos los tipos de datos en un momento.

También es aceptable y común separar la sentencia `CREATE TABLE` separando en diferentes líneas, como a continuación:

```sql
CREATE TABLE employees(
    id INTEGER,
    name TEXT,
    age INTEGER,
    is_manager BOOLEAN,
    salary INTEGER
);
```

## Tarea

¡Comencemos a construir una tabla para la base de datos *CashPal*! Crea la tabla `people` con los siguientes campos:

1. id - `INTEGER`
2. tag - `TEXT`
3. name - `TEXT`
4. age - `INTEGER`
5. balance - `INTEGER`
6. is_admin - `BOOLEAN`

En este caso no hay script tester.sh para crear la base de datos. Lo que deberás hacer es abrir A continuación, abre la base de datos test.db con sqlitebrowser, corrige la query que aparece en broken_query.sql y comprueba que se recuperan correctamente los registros.

La entrega de las 5 primeras prácticas de hará en un único documento de texto. Para ello crear el documento **practica_bbdd1_sql_apellidos_nombre**..

Generaremos un epígrafe para cada una de las prácticas, donde pondremos la respuesta de cada ejercicio.

Para este primer ejercicio, corrige la query y toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.


## Consejo

- El comando `PRAGMA TABLE_INFO(TABLENAME);` devuelve información sobre una tabla y sus campos. No necesitas editar esta línea, ¡pero podría interesarte!
- `INTEGER` e `INT` son tipos de datos ligeramente [diferentes](https://www.sqlite.org/lang_createtable.html#rowid). Las pruebas esperan `INTEGER`, no `INT`.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
