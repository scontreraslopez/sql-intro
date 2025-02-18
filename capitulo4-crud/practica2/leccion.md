# Sentencia Insert

¡Las tablas son bastante inútiles sin datos en ellas! En SQL podemos agregar registros a una tabla usando una sentencia `INSERT INTO`. Al usar una sentencia `INSERT` primero debemos especificar la `tabla` en la que estamos insertando el registro, seguido de los `campos` dentro de esa tabla a los que queremos agregar `VALORES`.

Ejemplo de sentencia `INSERT INTO`:

```sql
INSERT INTO employees(id, name, title)
VALUES (1, 'Allan', 'Engineer');
```

## Tarea

¡Empecemos a agregar manualmente algunos de los registros a nuestra tabla `users`!

Ejecuta `bash tester.sh` para inicializar la DB.

¡Echa un vistazo a la DB en el visualizador de sqlite y utiliza esta información para construir las siguientes sentencias `INSERT`.

### Registro 1

- `id`: 1
- `name`: David
- `age`: 34
- `country_code`: US
- `username`: DavidDev
- `password`: insertPractice
- `is_admin`: false

### Registro 2

- `id`: 2
- `name`: Samantha
- `age`: 29
- `country_code`: BR
- `username`: Sammy93
- `password`: addingRecords!
- `is_admin`: false

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev

