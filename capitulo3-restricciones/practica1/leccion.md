# Valores Nulos

En SQL, una celda con un valor `NULL` indica que el valor está *ausente*. Un valor `NULL` es *muy* diferente de un valor *cero*.

## Restricciones

Cuando creamos una tabla, podemos definir si un campo *puede* o *no puede* ser `NULL`, y eso es un tipo de `constraint`.

Cubriremos las restricciones con más detalle pronto, por ahora, enfoquémonos en los valores `NULL`.

## Asignación

No forzamos ninguna restricción (constraint) en nuestras tablas cuando las creamos y eso ha permitido que las entradas `NULL` lleguen a nuestra tabla. ¡Echemos un vistazo a nuestra tabla de `transacciones` para ver cómo se ven esos valores `NULL`.

Escribe una consulta para `SELECT` todos los campos de todos los registros de la tabla `transacciones`.

## Consejo

Usa la sintaxis del comodín `*` para seleccionar *todos* los campos.

## Observa

Observa que tanto los campos `transaction_type` como `was_successful` tienen valores `NULL` en los 3 registros de la tabla (los nulos están representados por celdas en blanco en nuestro sistema). ¡Eso es porque ejecutamos nuestra migración en el ejercicio anterior *después* de que se crearan los 3 registros!
