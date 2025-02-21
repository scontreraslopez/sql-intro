# Ciclo de vida de la base de datos CRUD HTTP

Hablamos sobre cómo una operación de "crear" fluye a través de una aplicación web. Hablemos de una "lectura".

![ciclo de vida de lectura](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/KTDQGy1.png)

Hablemos de un ejemplo usando la aplicación CashPal. Nuestro gerente de producto quiere mostrar datos de perfil en la página de configuración de un usuario. Así es como podríamos diseñar esa solicitud de función:

1. Primero, se carga la página web del front-end.
2. El front-end envía una solicitud HTTP `GET` a un endpoint `/users` en el servidor back-end.
3. El servidor recibe la solicitud.
4. El servidor usa una declaración `SELECT` para recuperar el registro del usuario de la tabla `users` en la base de datos.
5. El servidor convierte la fila de datos SQL en un objeto `JSON` y lo envía de vuelta al front-end.

El método HTTP que generalmente corresponde con una declaración SQL SELECT es un HTTP

## Tarea

Responde a las siguientes preguntas tipo test: 

- El método HTTP que generalmente corresponde con una declaración SQL SELECT es un HTTP
  - a) Actualizar
  - b) Poner
  - c) Parche
  - d) Obtener

- ¿Qué sucede primero?
  - a) Se ejecuta una declaración SELECT
  - b) Se envía una respuesta JSON
  - c) Se hace una solicitud GET
