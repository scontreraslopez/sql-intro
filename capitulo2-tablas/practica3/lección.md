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

## Asignación

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

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
