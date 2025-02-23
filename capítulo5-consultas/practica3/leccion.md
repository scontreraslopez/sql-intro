# Entre

Podemos verificar si los valores están `entre` dos números usando la cláusula `WHERE` de una manera intuitiva. La cláusula `WHERE` no siempre tiene que usarse para especificar identificadores o valores específicos. También podemos usarla para ayudar a reducir nuestro conjunto de resultados. Aquí hay un ejemplo:

```sql
SELECT employee_name, salary
FROM employees
WHERE salary BETWEEN 30000 and 60000;
```

Este query devuelve todos los campos `name` y `salary` de los empleados para cualquier fila donde el `salary` esté `ENTRE` 30,000 y 60,000. ¡También podemos consultar resultados que `NO ESTÉN ENTRE` dos valores especificados!

```sql
SELECT product_name, quantity
FROM products
WHERE quantity NOT BETWEEN 20 and 100;
```

Este query devuelve todos los nombres de productos donde la cantidad no estaba entre `20` y `100`. Podemos usar condicionales para hacer que los resultados de nuestra consulta sean tan específicos como los necesitemos.

## Asignación

¡Necesitamos ver cuántos adultos jóvenes están usando *CashPal*! Consulta nuestra tabla `users` para encontrar todos los campos `name` y `age` de los usuarios `ENTRE` las edades de `18` y `30`.
