# Like

A veces no tenemos el lujo de saber **exactamente** qué es lo que necesitamos consultar. ¿Alguna vez has querido buscar una canción o un video pero solo recuerdas **parte** del nombre? SQL nos proporciona una opción para cuando estamos en situaciones **LIKE** esta.

La palabra clave **LIKE** permite el uso de los operadores comodín **%** y **_**. Vamos a centrarnos primero en **%**.

## Operador %

El operador **%** coincidirá con cero o más caracteres. Podemos usar este operador dentro de nuestra cadena de consulta para encontrar más que solo coincidencias exactas, dependiendo de dónde lo coloquemos.

## Producto que empieza con “banana”:

```sql
SELECT * FROM products
WHERE product_name LIKE 'banana%';
```

## Producto que termina con “banana”:

```sql
SELECT * FROM products
WHERE product_name LIKE '%banana';
```

## Producto que contiene “banana”:

```sql
SELECT * FROM products
WHERE product_name LIKE '%banana%';
```

## Tarea

Nuestro equipo de recursos humanos está tratando con un ticket de uno de nuestros usuarios, pero tienen problemas para encontrar su registro en la base de datos. Están bastante seguros de que el nombre del usuario comienza con **Al**.

Escribe una consulta que devuelva todos los campos para los registros donde el **nombre** del usuario comience con **Al**.

## Pista

¡El operador **LIKE** espera una **cadena**! Asegúrate de que la declaración contra la que estás comparando esté entre comillas o SQL pensará que te refieres a una columna.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
