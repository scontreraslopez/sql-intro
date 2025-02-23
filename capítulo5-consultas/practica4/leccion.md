# Distinto

A veces queremos recuperar registros de una tabla sin obtener duplicados.

Por ejemplo, podemos querer saber todas las diferentes empresas en las que nuestros empleados han trabajado anteriormente, pero no queremos ver la misma empresa varias veces en el informe.

## SELECT DISTINCT

SQL nos ofrece la palabra clave `DISTINCT` que elimina los registros duplicados de la consulta resultante.

```sql
SELECT DISTINCT previous_company
FROM employees;
```

Esto solo devuelve una fila para cada valor único de `previous_company`.

## Tarea

Los ejecutivos de *CashPal* quieren saber en qué países tenemos clientes. Almacenamos los datos de `country_code` como una columna en la tabla `users`.

Ejecuta una consulta `DISTINCT` para obtener todos los `country_code` únicos de la tabla `users`.
