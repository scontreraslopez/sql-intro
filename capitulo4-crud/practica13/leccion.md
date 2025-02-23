# Object-Relational Mapping (ORMs)

Un [Mapeo Objeto-Relacional](https://es.wikipedia.org/wiki/Mapeo_objeto-relacional) o un *ORM* por sus siglas en inglés, es una herramienta que te permite realizar operaciones CRUD en una base de datos usando un lenguaje de programación tradicional. Estos típicamente vienen en forma de una biblioteca o framework que usarías en tu código backend.

El principal beneficio que proporciona un ORM es que mapea tus registros de base de datos a objetos en memoria. Por ejemplo, en Go podríamos tener una estructura que usamos en nuestro código:

```go
type User struct {
    ID int
    Name string
    IsAdmin bool
}
```

Esta definición de estructura representa convenientemente una tabla de base de datos llamada `users`, y una *instancia* de la estructura representa una fila en la tabla.

## Ejemplo: Usando un ORM

Usando un ORM podríamos escribir un código simple como este:

```go
user := User{
    ID: 10,
    Name: "Lane",
    IsAdmin: false,
}

// genera una declaración SQL y la ejecuta,
// creando un nuevo registro en la tabla users
db.Create(user)
```

## Ejemplo: Usando SQL Directo

Usando SQL directo podríamos tener que hacer algo un poco más manual:

```go
user := User{
    ID: 10,
    Name: "Lane",
    IsAdmin: false,
}

db.Exec("INSERT INTO users (id, name, is_admin) VALUES (?, ?, ?);",
    user.ID, user.Name, user.IsAdmin)
```

## ¿Deberías Usar un ORM?

¡Depende! Un ORM típicamente *intercambia simplicidad por control*.

Usando SQL directo puedes aprovechar al máximo el poder del lenguaje SQL. Usando un ORM, estás limitado por cualquier funcionalidad que tenga el ORM. Si te encuentras con problemas con una consulta específica, puede ser más difícil de depurar con un ORM porque tienes que profundizar en el código y la documentación del framework para averiguar cómo se están generando las consultas subyacentes.

Recomiendo hacer proyectos *de ambas maneras* para que puedas aprender sobre las compensaciones. Al final del día, cuando trabajas en un equipo de desarrolladores, será una decisión del equipo.

## Tarea

Responde a las siguientes cuestiones tipo test. Añade estas preguntas y sus respuestas en un nuevo epígrafe de tu documento de texto de las prácticas.

¡Felicidades! Con esta última práctica has completado el capítulo de CRUD. Ya puedes entregar el documento de texto a través de la plataforma Aules.

## Preguntas

- Cuando usas un ORM, tú ____
  - a) Escribes mucho SQL en bruto
  - b) Llamas a métodos y funciones disponibles a través de la API del ORM

- Una ventaja de un ORM es que...**
  - a) Hace tu código menos verboso (más sucinto)
  - b) Es más fácil de depurar a bajo nivel
  - c) Te da más control sobre tu base de datos
  - d) Asegura consultas más rápidas

- ¿Deberías usar un ORM?
  - a) Depende del proyecto/equipo
  - b) Siempre
  - c) Casi nunca
  - d) Casi siempre

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
