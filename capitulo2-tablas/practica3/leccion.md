# Modificando Tablas

A menudo necesitamos modificar nuestro esquema de base de datos sin eliminarlo y recrearlo. ¡Imagínate si Twitter eliminara su base de datos cada vez que necesitara agregar una función, sería un *desastre*! Tu cuenta y todos tus tweets serían borrados a diario.

En su lugar, podemos usar la sentencia `ALTER TABLE` para hacer cambios sin eliminar ningún dato.

## ALTER TABLE

Con SQLite, una sentencia `ALTER TABLE` te permite:

### 1. Renombrar una Tabla o Columna

```sql
ALTER TABLE employees
RENAME TO contractors;

ALTER TABLE contractors
RENAME COLUMN salary TO invoice;
```

### 2. Agregar o Eliminar una Columna

```sql
ALTER TABLE contractors
ADD COLUMN job_title TEXT;

ALTER TABLE contractors
DROP COLUMN is_manager;
```

---

## Tarea

> [!IMPORTANT]  
> Recuerda ejecutar tester.sh en esta práctica para inicializar la base de datos.

¡Necesitamos hacer algunos cambios en la tabla `people`! Por el momento, tenemos estas seis columnas (mostradas como filas para poder visualizar los tipos de datos):

| CID | NAME      | TYPE    | NOTNULL | DFLT VALUE | PK |
|-----|-----------|---------|---------|------------|----|
| 0   | id        | INTEGER | 0       |            | 0  |
| 1   | tag       | TEXT    | 0       |            | 0  |
| 2   | name      | TEXT    | 0       |            | 0  |
| 3   | age       | INTEGER | 0       |            | 0  |
| 4   | balance   | INTEGER | 0       |            | 0  |
| 5   | is_admin  | BOOLEAN | 0       |            | 0  |

Necesitamos realizar los siguientes cambios:

1. Renombrar la tabla a `users`.
2. Renombrar la columna `tag` a `username`.
3. Agregar la columna `password` (de tipo `TEXT`).

Una vez resuelto, sobre el documento de texto de este conjunto de prácticas, generarás un epígrafe nuevo para esta lección en la que incluirás su captura de pantalla.

Recuerda que puedes añadir `PRAGMA TABLE_INFO(TABLENAME);` al final de tu script para obtener información sobre la tabla.

Con esto puedes mostrar tanto el script de modificación de la tabla como su resultado para tomar la captura de pantalla.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
