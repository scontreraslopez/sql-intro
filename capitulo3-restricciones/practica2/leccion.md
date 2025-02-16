# Restricciones

Una `restricción` es una regla que creamos en una base de datos que **impone** un comportamiento específico. Por ejemplo, establecer una restricción `NOT NULL` en una columna asegura que la columna no aceptará valores `NULL`.

Si intentamos insertar un valor `NULL` en una columna con la restricción `NOT NULL`, la inserción fallará con un mensaje de error. Las restricciones son extremadamente útiles cuando necesitamos **asegurar** que ciertos tipos de datos existan dentro de nuestra base de datos.

## Definir una Restricción NOT NULL

La restricción `NOT NULL` se puede agregar directamente a la declaración `CREATE TABLE`.

```sql
CREATE TABLE empleados(
    id INTEGER PRIMARY KEY,
    nombre TEXT UNIQUE,
    -- La restricción UNIQUE asegura que no dos filas puedan tener el mismo valor en la columna 'nombre'
    titulo TEXT NOT NULL
    -- La restricción NOT NULL asegura que la columna 'titulo' no pueda tener valores NULL
);
```

## Limitación de SQLite

En otros dialectos de SQL puedes `ADD CONSTRAINT` dentro de una declaración `ALTER TABLE`. SQLite **no** soporta esta característica, por lo que cuando creamos nuestras tablas necesitamos asegurarnos de especificar todas las restricciones que queremos. Aquí hay una [lista de características de SQL](https://www.sqlite.org/omitted.html) que SQLite no implementa por si tienes curiosidad.

## Tarea

¡Afortunadamente todas las tablas que hemos creado para **CashPal** hasta este punto han sido para propósitos de prueba y aprendizaje! Ahora que tenemos una mejor comprensión de las restricciones, ¡reconstruyamos nuestra base de datos con las restricciones y tablas adecuadas!

> [!TIP]
> Puedes ejecutar tester.sh para crear una bbdd vacía o crearla tu mismo.

Crea la tabla `usuarios` con los siguientes campos y restricciones:

- `id` - `INTEGER`, `PRIMARY KEY`
- `nombre` - `TEXT`, `NOT NULL`
- `edad` - `INTEGER`, `NOT NULL`
- `codigo_pais` - `TEXT`, `NOT NULL`
- `nombre_usuario` - `TEXT`, `UNIQUE`, `NOT NULL`
- `contraseña` - `TEXT`, `NOT NULL`
- `es_admin` - `BOOLEAN`

> [!TIP]
> Recuerda que puedes ejecutar `PRAGMA TABLE_INFO('users');` para imprimir en la salida la definición de la tabla.

Construye y ejecuta dicha query, a continuación, toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc. Pégala en un nuevo epígrafe de tu documento de texto de las prácticas.
