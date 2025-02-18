# Claves Primarias

Una **clave** define y protege las relaciones entre tablas. Una [clave primaria](https://es.wikipedia.org/wiki/Clave_primaria) es una columna especial que identifica de manera única los registros dentro de una tabla. Cada tabla puede tener **una, y solo una clave primaria**.

## Tu Clave Primaria Casi Siempre Será la Columna “id”

Es **muy** común tener una columna llamada `id` en cada tabla de una base de datos, y que ese `id` sea la clave primaria de esa tabla. Ninguna fila en esa tabla puede compartir un `id`. Esto es un poco como el valor del campo fila en Microsoft Excel.

Se puede especificar explícitamente una restricción de `PRIMARY KEY` en una columna para asegurar la unicidad, rechazando cualquier inserción donde se intente crear un ID duplicado.

## Tarea

Ejecuta `bash tester.sh`. A continuación, sobre la base de datos recién creada, ejecuta el código que encontrarás en **original_query.sql**. Descubriás que hay un error en este código ya que dispara una violación de la restricción de `PRIMARY KEY` en la columna `id`. **Corrige los datos que se están insertando.**

Cuando trabajes con IDs enteros, es una buena práctica incrementar el `id` en `1` para cada inserción sucesiva. Sigue esta convención al corregir el error.

Construye y ejecuta dicha query, a continuación, toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. Inclúyela en un nuevo epígrafe del documento de texto de las prácticas. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
