# Bases de Datos Relacionales vs. No Relacionales

La gran diferencia entre las bases de datos relacionales y no relacionales es que las bases de datos no relacionales **anidan** sus datos. En lugar de mantener registros en tablas separadas, almacenan registros **dentro de otros registros**.

Para simplificarlo, puedes pensar en las bases de datos no relacionales como grandes blobs JSON. Si un usuario puede tener múltiples cursos, simplemente podrías añadir todos los cursos al registro del usuario.

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

Esto a menudo resulta en **datos duplicados** dentro de la base de datos. Eso obviamente es menos que ideal, pero tiene algunos beneficios de los que hablaremos más adelante en el curso.

<details open="">
<summary>
## Base de Datos Relacional
</summary>
![Base de Datos Relacional](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/Ogx4ICa.jpg)
</details>

<details open="">
<summary>
## Base de Datos No Relacional
</summary>
![relacional vs no relacional](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/36gbplf.jpeg)
</details>

**Pregunta: ¿En cuántos cursos está inscrito Sam?**
- 5
- 4
- 3
- 1

**Pregunta: ¿Cuántos estudiantes hay en el curso de ASP.NET MVC?**
- 5
- 4
- 3
- 1

**Pregunta: Las bases de datos ____ a menudo duplican datos, mientras que las bases de datos ____ típicamente no lo hacen.**
- Relacionales, no relacionales
- No relacionales, relacionales

**Pregunta: Las bases de datos no relacionales conectan entidades similares usando ____.**
- Datos anidados
- Claves
- Flubber
- Concurrencia
