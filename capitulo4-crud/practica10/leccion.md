# ELIMINAR

Cuando un usuario elimina su cuenta en Twitter, o elimina un comentario en un video de YouTube, esos datos deben ser eliminados de su respectiva base de datos.

## Declaración DELETE

Una declaración `DELETE` elimina todos los registros de una tabla que coinciden con la cláusula `WHERE`. Como ejemplo:

```sql
DELETE FROM employees
WHERE id = 251;
```

Este comando `DELETE` elimina todos los registros de la tabla `employees` que tienen un id de `251`.

## Tarea

Samantha, una de nuestras usuarias de *CashPal*, ha optado por eliminar su cuenta y dejar de usar nuestra aplicación... lo cual nos entristece. De todas formas, ¡necesitamos eliminar su registro de la base de datos!

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta que permita eliminar el registro de Samantha de la tabla de usuarios. ¡Añade una sentencia `SELECT * FROM users;` al final de tu script para verificar que el registro ha sido eliminado!
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añádelo bajo un nuevo epígrafe en tu documento de texto.

### Estado Actual de la Tabla `users`

| ID | NOMBRE   | EDAD | código_país | NOMBRE_USUARIO | CONTRASEÑA       | es_admin |
|----|----------|------|-------------|----------------|------------------|----------|
| 1  | David    | 34   | US          | DavidDev       | insertPractice   | 0        |
| 2  | Samantha | 29   | BR          | Sammy93        | addingRecords!   | 0        |
| 3  | John     | 39   | CA          | Jjdev21        | welovebootdev    | 0        |
| 4  | Ram      | 42   | IN          | Ram11c         | thisSQLcourserocks | 0      |
| 5  | Hunter   | 30   | US          | Hdev92         | backendDev       | 0        |
| 6  | Allan    | 27   | US          | Alires         | iLoveB00tdev     | 1        |
| 7  | Lance    | 20   | US          | LanChr         | b00tdevisbest    | 0        |
| 8  | Tiffany  | 28   | US          | Tifferoon      | autoincrement    | 1        |
| 9  | Lane     | 27   | US          | wagslane       | update_me        | 0        |

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
