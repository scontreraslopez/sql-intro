# Valores Nulos

En SQL, una celda con un valor `NULL` indica que el valor está *ausente*. Un valor `NULL` es *muy* diferente de un valor *cero*.

## Restricciones

Cuando creamos una tabla, podemos definir si un campo *puede* o *no puede* ser `NULL`, y eso es un tipo de `constraint` (o restricción en castellano).

Cubriremos las restricciones con más detalle pronto, por ahora, enfoquémonos en los valores `NULL`.

## Tarea

> [!NOTE]  
> Para la entrega crearás un nuevo documento de texto, **practica_bbdd3_sql_apellidos_nombre** que utilizarás para entregar la memoria de este nuevo conjunto de prácticas. Tal y como hicimos la última vez, generarás un epígrafe para cada práctica.

Hasta ahora no hemos forzado ninguna restricción (constraint) en nuestras tablas cuando las hemos creamos. Ésto ha permitido que las entradas `NULL` lleguen a nuestra tabla. ¡Echemos un vistazo a nuestra tabla de `transacciones` para ver cómo se ven esos valores `NULL`.

Escribe una consulta para `SELECT` todos los campos de todos los registros de la tabla `transacciones`. Observa que tanto los campos `transaction_type` como `was_successful` tienen valores `NULL` en los 3 registros de la tabla (los nulos están representados por celdas en blanco en nuestro sistema). 

> [!TIP]
> Recuerda usar la sintaxis del comodín `*` para seleccionar *todos* los campos.

Construye y ejecuta dicha query, a continuación, toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.
