# Conteo de Usuarios

CashPal tiene un panel en su sitio web que muestra estadísticas sobre la ubicación de los usuarios. Uno de los miembros de tu equipo de QA está preocupado porque el número de usuarios ubicados en los EE.UU. parece bastante pequeño.

## Desafío

Escribe una consulta SQL que devuelva el *conteo* de cada registro de usuario que tenga su `country_code` igual a `US`. Recuerda, queremos saber el número de *registros totales* por lo que podemos usar el comodín (*) en nuestro `COUNT(*)`. Aunque también podrías usar el `id` en tu `COUNT(id)`, para este desafío usa mejor el comodín (*).

Para ello:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta SQL que devuelva el conteo de usuarios ubicados en los EE.UU.
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añádelo a un nuevo documento de texto, asociado a las entregas de profundización de este capítulo.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
