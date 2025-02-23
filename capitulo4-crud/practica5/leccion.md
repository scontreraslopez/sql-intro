# Entrada Manual

¡Hacer un `INSERT` de manera manual para cada registro en una base de datos sería una tarea *extremadamente* lenta! Trabajar con SQL puro como lo estamos haciendo ahora *no* es muy común al diseñar sistemas backend.

Cuando se trabaja con SQL dentro de un sistema de software, como una aplicación web backend, normalmente se tiene acceso a un lenguaje de programación como Go, Python, .NET, Java, etc. Por ejemplo, un servidor backend escrito en Go puede usar concatenación de cadenas para crear dinámicamente sentencias SQL, ¡y eso es lo que usualmente se hace!

```go
sqlQuery := fmt.Sprintf(`
INSERT INTO users(name, age, country_code)
VALUES ('%s', %v, '%s');
`, user.Name, user.Age, user.CountryCode)
```

## Inyección SQL

El ejemplo anterior es una simplificación de lo que *realmente* sucede cuando se accede a una base de datos usando código Go. En esencia, es correcto. La interpolación de cadenas es cómo los sistemas de producción acceden a las bases de datos. Dicho esto, debe hacerse *cuidadosamente* para no crear una [vulnerabilidad de seguridad](https://es.wikipedia.org/wiki/Inyecci%C3%B3n_SQL).

## Tarea

Para la entrega añade un nuevo epígrafe en tu documento de texto y responde las siguientes preguntas tipo test.

- Cada vez que alguien crea una cuenta en boot.dev, Allan o Lane tienen que añadirlos manualmente a la base de datos escribiendo una consulta SQL a mano:
  - a) Verdadero
  - b) Falso

- Dentro de los sistemas backend, las consultas SQL son típicamente ____
  - a) Escritas a mano
  - b) Generadas por código

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
