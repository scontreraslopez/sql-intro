# Bases de Datos Relacionales vs. No Relacionales

La gran diferencia entre las bases de datos relacionales y no relacionales es que las bases de datos no relacionales **anidan** sus datos. En lugar de mantener registros en tablas separadas, almacenan registros **dentro de otros registros**.

Para simplificarlo, puedes pensar en las bases de datos no relacionales como grandes blobs (binary large object) en formato JSON. Si un usuario puede tener múltiples cursos, simplemente podrías añadir todos los cursos al registro del usuario.

```json
{
    "usuarios": [
        {
            "id": 0,
            "nombre": "Elon",
            "cursos": [
                {
                    "nombre": "Biología",
                    "id": 0
                },
                {
                    "nombre": "Biología",
                    "id": 0
                }
            ]
        }
    ]
}
```

Esto a menudo resulta en **datos duplicados** dentro de la base de datos. Eso obviamente es menos que ideal, pero tiene otros beneficios.

![Base de Datos Relacional](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/Ogx4ICa.jpg)

![relacional vs no relacional](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/36gbplf.jpeg)

## Tarea

Responde a las siguientes cuestiones tipo test a partir de la información mostrada en las imágenes anteriores. Añade estas preguntas y sus respuestas en un nuevo epígrafe de tu documento de texto de las prácticas.

¡Felicidades! Con este ejercicio has terminado una nueva entrega de las prácticas de bases de datos. ¡Sigue así!

## Preguntas

- ¿En cuántos cursos está inscrito Sam?
  - a) 5
  - b) 4
  - c) 3
  - d) 1

- ¿Cuántos estudiantes hay en el curso de ASP.NET MVC?
  - a) 5
  - b) 4
  - c) 3
  - d) 1

- Las bases de datos ____ a menudo duplican datos, mientras que las bases de datos ____ típicamente no lo hacen.
  - a) Relacionales, no relacionales
  - b) No relacionales, relacionales

- Las bases de datos no relacionales conectan entidades similares usando ____.
  - a) Datos anidados
  - b) Claves
  - c) Flubber
  - d) Concurrencia

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
