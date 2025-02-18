# Consulta de Actualización en SQL

Siempre que actualizas tu foto de perfil o cambias tu contraseña en línea, ¡estás cambiando los datos en un campo de una tabla en una base de datos! Imagina si cada vez que accidentalmente te equivocaras en un Tweet en Twitter tuvieras que eliminar todo el tweet y publicar uno nuevo en lugar de simplemente editarlo...

...Bueno, ese es un mal ejemplo.

## Declaración de Actualización

La declaración `UPDATE` en SQL nos permite actualizar los campos de un registro. Incluso podemos actualizar muchos registros dependiendo de cómo escribamos la declaración.

Una declaración `UPDATE` especifica la tabla que necesita ser actualizada, seguida de los campos y sus nuevos valores utilizando la palabra clave `SET`. Finalmente, una cláusula `WHERE` indica el(los) registro(s) a actualizar.

```sql
UPDATE employees
SET job_title = 'Backend Engineer', salary = 150000
WHERE id = 251;
```

## Asignación

¡Necesitamos actualizar el registro de Lane en nuestra tabla de usuarios, él fundó CashPal pero ni siquiera es reconocido como administrador!

¡Actualiza el registro de Lane dentro de la tabla `users` para que el campo `is_admin` esté establecido en `true`!

Aquí está el estado actual de la tabla `USERS` para referencia:

| id  | name     | age | country_code | username | password          | is_admin |
|-----|----------|-----|--------------|----------|-------------------|----------|
| 1   | David    | 34  | US           | DavidDev | insertPractice    | 0        |
| 2   | Samantha | 29  | BR           | Sammy93  | addingRecords!    | 0        |
| 3   | John     | 39  | CA           | Jjdev21  | welovebootdev     | 0        |
| 4   | Ram      | 42  | IN           | Ram11c   | thisSQLcourserocks| 0        |
| 5   | Hunter   | 30  | US           | Hdev92   | backendDev        | 0        |
| 6   | Allan    | 27  | US           | Alires   | iLoveB00tdev      | 1        |
| 7   | Lance    | 20  | US           | LanChr   | b00tdevisbest     | 0        |
| 8   | Tiffany  | 28  | US           | Tifferoon| autoincrement     | 1        |
| 9   | Lane     | 27  | US           | wagslane | update_me         | 0        |
