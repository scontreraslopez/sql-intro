# Ciclo de Vida de la Base de Datos HTTP CRUD

Es importante entender cómo *fluye* la información a través de una aplicación web típica.

![flujo de base de datos](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/hli3crD.png)

1. El front-end procesa algunos datos de la entrada del usuario - tal vez se envía un formulario.
2. El front-end envía esos datos al servidor a través de una solicitud HTTP - tal vez un `POST`.
3. El servidor realiza una consulta SQL a su base de datos para crear un registro asociado - Probablemente usando una declaración `INSERT`.
4. Una vez que el servidor ha procesado que la consulta a la base de datos fue exitosa, responde al front-end con un código de estado. ¡Esperemos que sea un código de nivel 200 (éxito)!

**P:** Un front-end típicamente se comunica directamente con una base de datos para agregar nuevos registros.
- Verdadero
- Falso

**P:** El 'Crear' en CRUD se corresponde con qué declaración SQL y método HTTP?
- Select, Put
- Select, Get
- Insert, Post
- Insert, Get
