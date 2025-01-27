# Lección 2 -  Declaración SQL SELECT

## Enlace

<https://github.com/scontreraslopez/sql-intro/blob/main/practica2/leccion.md>

## Introducción

¡Vamos a escribir nuestra propia declaración SQL desde cero! Una declaración SELECT es la operación más común en SQL, a menudo llamada "consulta". SELECT recupera datos de una o más tablas. Las declaraciones SELECT estándar no alteran el estado de la base de datos.

```sql
SELECT id FROM users;
```

## Seleccionar un Solo Campo

Una declaración SELECT comienza con la palabra clave SELECT seguida de los campos que deseas recuperar.

```sql
SELECT id FROM users;
```

## Seleccionar Múltiples Campos

Si deseas seleccionar más de un campo, puedes especificar múltiples campos separados por comas.

```sql
SELECT id, name FROM users;
```

## Seleccionar Todos los Campos

Si deseas seleccionar todos los campos de un registro, puedes usar la sintaxis abreviada *.

```sql
SELECT * FROM users;
```

Después de especificar los campos, necesitas indicar de qué tabla deseas obtener los registros utilizando la declaración FROM seguida del nombre de la tabla. Hablaremos más sobre las tablas más adelante, pero por ahora, puedes pensar en ellas como estructuras o objetos. Por ejemplo, la tabla de usuarios podría tener 3 campos:

- id
- name
- balance

Y, finalmente, todas las declaraciones terminan con un punto y coma `;`.

## Tarea

El estado de nuestra tabla de usuarios de CashPal es el siguiente:

| id | name         | age | balance | is_admin |
|----|--------------|-----|---------|----------|
| 1  | John Smith   | 28  | 450     | 1        |
| 2  | Darren Walker | 27  | 200     | 0        |
| 3  | Jane Morris  | 33  | 496.24  | 0        |

Es muy común escribir consultas que solo devuelven porciones específicas de datos de una tabla. Nuestro equipo de RRHH ha solicitado un informe pidiendo todos los nombres y saldos de todos nuestros usuarios.

Escribe una consulta que recupere todos los nombres y saldos de la tabla de usuarios.

Ejecuta el script tester.sh para crear la base de datos. A continuación, abre la base de datos test.db con sqlitebrowser, completa la query solicitada y comprueba que se recuperan correctamente los registros.

Para la entrega, crear un documento de texto llamado **practica2_sql_apellidos_nombre** con la query solicitada y una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
