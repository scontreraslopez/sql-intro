# Contar

Podemos usar una declaración `SELECT` para obtener un **conteo** de los registros dentro de una tabla. Esto puede ser muy útil cuando necesitamos saber **cuántos** registros hay, pero no nos importa particularmente qué hay en ellos.

Aquí hay un ejemplo en SQLite:

```sql
SELECT COUNT(*) FROM employees;
```

El `*` en este caso se refiere al nombre de una columna. No nos importa el conteo de una **columna específica** - queremos saber el número de **registros totales** así que podemos usar el comodín (*).

## Asignación

Aquí está el estado actual de nuestra tabla `users`:

| id | nombre   | edad | código_pais | nombre_usuario | contraseña        | es_admin |
|----|----------|------|-------------|----------------|-------------------|----------|
| 1  | David    | 34   | US          | DavidDev       | insertPractice    | 0        |
| 2  | Samantha | 29   | BR          | Sammy93        | addingRecords!    | 0        |
| 3  | John     | 39   | CA          | Jjdev21        | welovebootdev     | 0        |
| 4  | Ram      | 42   | IN          | Ram11c         | thisSQLcourserocks| 0        |
| 5  | Hunter   | 30   | US          | Hdev92         | backendDev        | 0        |
| 6  | Allan    | 27   | US          | Alires         | iLoveB00tdev      | 1        |
| 7  | Lance    | 20   | US          | LanChr         | b00tdevisbest     | 0        |
| 8  | Tiffany  | 28   | US          | Tifferoon      | autoincrement     | 1        |

Nuestro equipo de estrategia de negocios en CashPal quiere saber cuántos usuarios de la aplicación tenemos. ¡No podemos usar el número de `id` para calcular el conteo porque las cuentas de usuario pueden ser eliminadas!

Usa una declaración `COUNT(*)` para recuperar el número de registros en la tabla `users`.

**Nota:** En este curso, usa `*` con `COUNT` a menos que las instrucciones digan específicamente contar una columna en particular.
