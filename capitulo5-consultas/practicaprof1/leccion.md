# Lección Profundización 1 -  Programa de descuentos

CashPal ha decidido iniciar dos nuevos programas de descuentos dirigidos a ciertos clientes. Los descuentos son los siguientes:

1. Todos los usuarios mayores de 55 años calificarán para un descuento para personas mayores.
2. En celebración del Día de Canadá - todos los usuarios canadienses (`country_code` "CA") calificarán para un descuento.

Queremos devolver todos los registros de la tabla `users`, pero queremos incluir una columna extra para saber si cada usuario califica para alguno de estos descuentos.

## Desafío

Devuelve todos los datos de la tabla `users` y una columna temporal denominada `discount_eligible`.

La columna `discount_eligible` debe tener un valor booleano de `true` o `false` dependiendo de si el usuario cumple alguna de las condiciones de descuento mencionadas anteriormente.

Para ello:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta que devuelva todos los datos de la tabla `users` y una columna adicional `discount_eligible` que sea `true` si el usuario califica para alguno de los descuentos mencionados anteriormente y `false` en caso contrario. Acuérdate de utilizar la función `IIF` para realizar esta tarea.
3. Toma una captura de pantalla con tu solución y el resultado. Añade la captura de pantalla a un nuevo documento de texto en el que generarás un epígrafe para este ejercicio.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
