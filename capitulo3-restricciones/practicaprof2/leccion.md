# Crear una Clave Foránea

Logramos arreglar la tabla `banks` pero ahora queremos tener la seguridad añadida de las restricciones de clave foránea en nuestra tabla `users`. Para este desafío, la tabla `users` contiene un `bank_id`, queremos asegurarnos de que el `bank_id` del usuario haga referencia a un `id` de la tabla `banks`.

## Desafío

Abre la `original_query.sql` en sqlitebrowser y cambia la declaración de creación de la tabla para incluir una restricción de `FOREIGN KEY` en la tabla `users` llamada `fk_banks` que `REFERENCES` un ID de la tabla `banks`.

Para la entrega añade un epígrafe sobre el documento creado en la anterior práctica e incluye una captura de pantalla con la solución. 

¡Felicidades! Con esta práctica concluye este capítulo incluidas las tareas de profundización Ya puedes entregarlas por aules.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev

