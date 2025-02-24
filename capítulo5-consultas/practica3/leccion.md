# BETWEEN

Podemos verificar si los valores están `BETWEEN` (entre) dos números usando la cláusula `WHERE` de una manera intuitiva. La cláusula `WHERE` no siempre tiene que usarse para especificar identificadores o valores específicos. También podemos usarla para ayudar a reducir nuestro conjunto de resultados. Aquí hay un ejemplo:

```sql
SELECT employee_name, salary
FROM employees
WHERE salary BETWEEN 30000 and 60000;
```

Este query devuelve todos los campos `name` y `salary` de los empleados para cualquier fila donde el `salary` esté `BETWEEN` 30,000 y 60,000. ¡También podemos consultar resultados que estén fuera de un rango utilizando `NOT BETWEEN` y los dos valores que definen dicho rango!

```sql
SELECT product_name, quantity
FROM products
WHERE quantity NOT BETWEEN 20 and 100;
```

Este query devuelve todos los nombres de productos donde la cantidad no estaba entre `20` y `100`. Podemos usar condicionales para hacer que los resultados de nuestra consulta sean tan específicos como los necesitemos.

## Tarea

¡Necesitamos ver cuántos adultos jóvenes están usando *CashPal*! Consulta nuestra tabla `users` para encontrar todos los campos `name` y `age` de los usuarios `ENTRE` las edades de `18` y `30`.

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta que encuentre nuestros adultos jóvenes de acuerdo a las instrucciones dadas.
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añade la captura de pantalla a tu documento de texto bajo un nuevo epígrafe.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
