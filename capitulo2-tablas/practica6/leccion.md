# Tipos de Datos en SQL

SQL como lenguaje puede soportar muchos tipos de datos diferentes. Sin embargo, los tipos de datos que soporta tu sistema de gestión de bases de datos ([DBMS](https://en.wikipedia.org/wiki/Database#:~:text=A%20database%20management%20system%20(DBMS))) variarán dependiendo de la base de datos específica que estés utilizando.

SQLite solo soporta los tipos más básicos, ¡y estamos usando SQLite en este curso!

## Tipos de Datos en SQLite

Vamos a repasar los [tipos de datos soportados por SQLite](https://www.sqlite.org/datatype3.html) y cómo se almacenan.

1. `NULL` - Valor nulo.
2. `INTEGER` - Un entero con signo almacenado en 0, 1, 2, 3, 4, 6 u 8 bytes.
3. `REAL` - Valor de punto flotante almacenado como un número de punto flotante [IEEE de 64 bits](https://en.wikipedia.org/wiki/IEEE_754).
4. `TEXT` - Cadena de texto almacenada usando la codificación de la base de datos como [UTF-8](https://en.wikipedia.org/wiki/UTF-8).
5. `BLOB` - Abreviatura de [Objeto Binario Grande](https://en.wikipedia.org/wiki/Binary_large_object) y típicamente usado para imágenes, audio u otros multimedia.
6. `BOOLEAN` - Los valores booleanos se escriben en las consultas de SQLite como `true` o `false`, pero se registran como `1` o `0`.

## Valores Booleanos

Es importante notar que SQLite no tiene una clase de almacenamiento separada para `BOOLEAN`. En su lugar, los valores booleanos se almacenan como enteros:

- `0` = `false`
- `1` = `true`

*¡No es tan raro en realidad, los valores booleanos son solo bits binarios después de todo!*

SQLite aún te permitirá escribir tus consultas usando expresiones booleanas y las palabras clave `true`/`false`, pero convertirá los booleanos a enteros internamente.

## Tarea

Para la entrega, sobre el documento de texto asociado a este conjunto de prácticas genera un epígrafe para recoger la solución de este ejercicio. Aquí, responde a las siguientes preguntas tipo test. Solo una de las respuestas a cada pregunta es correcta:

- ¿Cómo se almacena y presenta un valor booleano 'true' en SQLite?
  - a) La cadena 'true'
  - b) La cadena 'false'
  - c) 1
  - d) 0

- ¿Todas las bases de datos SQL soportan los mismos tipos de datos?
  - a) Sí
  - b) No

- ¿Qué tipo usarías para almacenar el correo electrónico de un usuario?
  - a) TEXT
  - b) REAL
  - c) INTEGER
  - d) BLOB

¡Felicidades! Con esta lección has completado todas las prácticas necesarias para la segunda entrega a través de la plataforma Aules.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
