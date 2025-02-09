# Creando una Tabla

Para crear una nueva tabla en una base de datos, utiliza la sentencia `CREATE TABLE` seguida del nombre de la tabla y los campos que deseas en la tabla.

```sql
CREATE TABLE employees (id INTEGER, name TEXT, age INTEGER, is_manager BOOLEAN, salary INTEGER);
```

Cada nombre de campo va seguido de su *tipo de dato*. Veremos los tipos de datos en un momento.

También es aceptable y común separar la sentencia `CREATE TABLE` en diferentes líneas, como a continuación:

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

En este caso no hay script `tester.sh` para inicializar la base de datos, en lugar de ello la crearás tu mismo en DB Browser for SQLite utilizando el botón de "Nueva base de datos". A continuación deberás construir la sentencia que permita crear una nueva tabla dentro de esta *nueva base de datos*.

Crea la tabla `people` con los siguientes campos:

1. id - `INTEGER`
2. tag - `TEXT`
3. name - `TEXT`
4. age - `INTEGER`
5. balance - `INTEGER`
6. is_admin - `BOOLEAN`

Por otro lado, para la entrega crearás un nuevo documento de texto, **practica_bbdd2_sql_apellidos_nombre** que utilizarás para entregar la memoria de este nuevo conjunto de prácticas. Cómo hicimos la última vez, generarás un epígrafe para cada práctica.

Construye y ejecuta la query que nos permita crear esta nueva tabla, a continuación, toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Consejo

- El comando `PRAGMA TABLE_INFO(TABLENAME);` devuelve información sobre una tabla y sus campos. No necesitas editar esta línea, ¡pero podría interesarte incluirla al final!
- `INTEGER` e `INT` son tipos de datos ligeramente [diferentes](https://www.sqlite.org/lang_createtable.html#rowid). En este ejercicio se espera que utilices `INTEGER`, no `INT`.

> [!TIP]
> Si añades la instrucción `DROP TABLE IF EXISTS people;` antes de la sentencia `CREATE TABLE`, podrás ejecutar el script varias veces sin problemas.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
