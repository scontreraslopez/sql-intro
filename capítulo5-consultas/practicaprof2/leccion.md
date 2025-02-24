# Lección Profundización 2 -  Prevención de Fraude

Los usuarios han informado al equipo de soporte de CashPal que han sido contactados por algunos usuarios sospechosos que afirman trabajar para CashPal. Te han pedido que escribas una consulta para encontrar a personas que se hacen pasar por empleados de CashPal. Estos usuarios sospechosos han estado usando las palabras `cashpal` y `support` en sus nombres de usuario para hacerse pasar por empleados reales. Afortunadamente, cada empleado de CashPal tiene el campo `is_admin` establecido en true, por lo que podemos determinar si un usuario es un empleado.

## Desafío

Escribe una consulta que devuelva el `name` y el `username` de cada usuario que tenga las palabras `cashpal` o `support` en alguna parte de su nombre de usuario y **no** sea un administrador.

Para ello:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta, utilizando la función LIKE, que devuelva los usuarios que contienen las palabras `cashpal` o `support` en su nombre de usuario y no sean administradores.
3. Toma una captura de pantalla con tu solución y el resultado. Añade la captura de pantalla a tu documento de texto bajo un nuevo epígrafe.

¡Finalmente: Ya puedes entregar el documento de texto con las prácticas de profundización 1 y 2 completadas por aules! Felicidades por llegar hasta aquí.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
