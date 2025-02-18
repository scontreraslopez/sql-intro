# Schema (Esquema) de una base de datos

Hemos usado la palabra _esquema_ (_schema_ en inglés) varias veces, hablemos sobre lo que significa esa palabra. El [schema](https://www.ibm.com/think/topics/database-schema) de una base de datos describe cómo se organiza la información dentro de ella.

Los tipos de datos, nombres de tablas, nombres de campos, restricciones y las relaciones entre todas esas entidades son parte del _esquema_ de una base de datos.

## No hay una manera perfecta de diseñar un esquema de base de datos

Al diseñar un esquema de base de datos, típicamente no hay una solución "correcta". Hacemos lo mejor que podemos para elegir un conjunto sensato de tablas, campos, restricciones, etc., que cumplirán con los objetivos de nuestro proyecto. Como muchas cosas en programación, diferentes diseños de esquemas vienen con diferentes compensaciones.

## ¿Cómo decidimos una arquitectura de esquema sensata?

Usemos _CashPal_ como ejemplo. Una decisión muy importante que debe tomarse es decidir qué tabla almacenará el saldo de un usuario. Como puedes imaginar, asegurar que nuestros datos sean precisos cuando se trata de dinero es _súper_ importante. Queremos poder:

- Hacer un seguimiento del saldo actual de un usuario
- Ver el saldo histórico en cualquier momento del pasado
- Ver un registro de qué transacciones cambiaron el saldo a lo largo del tiempo

Hay muchas maneras de abordar este problema. Para nuestro primer intento, probemos el _esquema más simple que cumpla con las necesidades de nuestro proyecto_.

## Tarea

El equipo de arquitectura de CashPal ha decidido una única tabla de `transacciones`. La tabla de `transacciones` almacena transacciones individuales, y podemos hacer un seguimiento del "saldo actual" en cada registro de transacción. ¡Si queremos el saldo actual, solo tenemos que mirar la transacción más reciente!

Crea la tabla de `transacciones` con los siguientes campos y restricciones:

- `id` - `INTEGER` `PRIMARY KEY`
- `sender_id` - `INTEGER`
- `recipient_id` - `INTEGER`
- `memo` - `TEXT` - `NOT NULL`
- `amount` - `INTEGER` - `NOT NULL`
- `balance` - `INTEGER` - `NOT NULL`

> [!TIP]
> Recuerda que puedes ejecutar `PRAGMA TABLE_INFO('users');` para imprimir en la salida la definición de la tabla.

Construye y ejecuta dicha query, a continuación, toma una captura de pantalla de la base de datos abierta en sqlitebrowser ejecutando la query correctamente y mostrando el output. Pega esta captura de pantalla en un nuevo epígrafe del documento, asociado a esta práctica. La captura de pantalla deberá contener **TODA LA PANTALLA** incluida la hora del pc.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
