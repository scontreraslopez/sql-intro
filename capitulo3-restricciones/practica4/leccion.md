# Foreign Keys (o claves foráneas)

Las claves foráneas (más frecuentemente llamadas FK, o foreign keys) son lo que hace que las bases de datos relacionales sean relacionales. Las claves foráneas definen las relaciones _entre_ tablas. En pocas palabras, una `FOREIGN KEY` es un campo en una tabla que hace referencia a la `PRIMARY KEY` de otra tabla.

## Crear una Clave Foránea en SQLite

La creación de una `FOREIGN KEY` en SQLite ocurre al crear la tabla. Después de definir los campos y restricciones de la tabla, añadimos una `CONSTRAINT` con un nombre donde definimos la columna `FOREIGN KEY` y sus `REFERENCES`.

Aquí hay un ejemplo:

```sql
CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    CONSTRAINT fk_departments
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
);
```

En este ejemplo, un `employee` tiene un `department_id`. El `department_id` debe ser el mismo que el campo `id` de un registro de la tabla `departments`. `fk_departments` es el nombre especificado de la [restricción](https://www.sqlite.org/lang_createtable.html#constraint_enforcement).

1. `CONSTRAINT fk_departments`: crea una restricción llamada `fk_departments`
2. `FOREIGN KEY (department_id)`: hace que esta restricción sea una clave foránea asignada al campo `department_id`
3. `REFERENCES departments(id)`: enlaza el campo foráneo `id` de la tabla `departments`

## Tarea

Ejecuta `bash tester.sh` para inicializar una nueva base de datos vacía. Abrela ahora la query `original_query.sql` y obsérvala.

Nuestra tabla `users` almacena el país de nuestros usuarios en un campo `country_code`. Necesitamos algunos datos adicionales sobre los países, como su nombre, pero no queremos sobrecargar nuestra tabla `users` con todos esos datos de países.

El equipo de localización en CashPal ha creado una segunda tabla “countries”, donde podemos vincular a un usuario con su país estableciendo una clave foránea en la tabla `users`. Crear una clave foránea sin la palabra clave `CONSTRAINT` significa que el nombre de la restricción se asigna automáticamente.

Echa un vistazo de nuevo al código de la query. ¡Hay un problema con las sentencias `INSERT` de nuevo! Arregla los datos para que no se violen las restricciones de clave foránea. Necesitarás referenciar la _configuración_ en la pestaña `original_query.sql` en el editor de código.

Construye y ejecuta dicha query, a continuación, toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. Pega esta captura de pantalla en un nuevo epígrafe del documento, asociado a esta práctica. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.
