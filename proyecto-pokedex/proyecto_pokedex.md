# Proyecto: Construyendo Nuestra Propia Pokédex Digital con SQL

## Índice

- [Descripción del Proyecto](#descripción-del-proyecto)
- [Sesiones de Trabajo](#sesiones-de-trabajo)
  - [Sesión 1: ¡El Nacimiento de la Pokédex! - Creación, Población y Primeros Pasos](#sesión-1-el-nacimiento-de-la-pokédex---creación-población-y-primeros-pasos)
    - [Módulo 1: Bienvenida y Objetivos](#módulo-1-bienvenida-y-objetivos)
    - [Módulo 2: Refresco Teórico Rápido y Calentamiento](#módulo-2-refresco-teórico-rápido-y-calentamiento)
    - [Módulo 3: ¡Manos a la Obra! Creando la Base de Datos y la Tabla Pokémon](#módulo-3-manos-a-la-obra-creando-la-base-de-datos-y-la-tabla-pokémon)
    - [Módulo 4: Poblando la Pokédex](#módulo-4-poblando-la-pokédex)
    - [Módulo 5: Reflexión](#módulo-5-reflexión)
  - [Sesión 2: ¡Dominando la Pokédex! - Consultas Avanzadas y Mantenimiento](#sesión-2-dominando-la-pokédex---consultas-avanzadas-y-mantenimiento)
    - [Módulo 1: Recapitulación y Objetivos](#módulo-1-recapitulación-y-objetivos)
    - [Módulo 2: Refresco Teórico](#módulo-2-refresco-teórico)
    - [Módulo 3: Renombrando Tablas y Columnas](#módulo-3-renombrando-tablas-y-columnas)
    - [Módulo 4: ¡Preparación para la Liga de Datos Pokémon!](#módulo-4-preparación-para-la-liga-de-datos-pokémon)
    - [Módulo 5: Conociendo a MissingNo. - Manejo de Datos Inesperados](#módulo-5-conociendo-a-missingno---manejo-de-datos-inesperados)
    - [Profundización I: Agrupando Datos con GROUP BY](#profundización-i-agrupando-datos-con-group-by)
    - [Profundización II - Introducción a JOIN](#profundización-ii---introducción-a-join)
- [Conclusión y Reflexión Final](#conclusión-y-reflexión-final)

## Descripción del Proyecto

**Objetivo General del Proyecto:** Reforzar y aplicar los conocimientos fundamentales de SQL que hemos trabajado: Creación de tablas, restricciones básicas, operaciones CRUD y consultas variadas. Utilizaremos para ello SQLite y un conjunto de datos de Pokémon, culminando en una base de datos funcional y la capacidad de extraer información relevante de ella.

**Áreas de Conocimiento:** Bases de Datos (SQL, SQLite), Sistemas Informáticos (manejo de archivos, cliente de BBDD).

**Herramientas:**

- SQLite (instalado en el ordenador o en un entorno virtual). En nuestro caso, ya está instalado SQlite3 en la VM que estamos usando en la asignatura.
- Cliente SQLite (como DB Browser for SQLite, DBeaver con driver SQLite, o la terminal `sqlite3`). En nuestro caso, DB Browser for SQLite, que ya tenemos instalado en la VM.
- El archivo `pokemon_table.txt` proporcionado.
- Un editor de texto simple (para escribir y guardar consultas). KWrite o VSCode en la VM serían buenas opciones.

---

## Sesiones de Trabajo

### Sesión 1: ¡El Nacimiento de la Pokédex! - Creación, Población y Primeros Pasos

**Duración**: Aproximadamente 50 minutos.

#### Módulo 1: Bienvenida y Objetivos

¡Hola, futuros maestros Pokémon y expertos en datos! Bienvenidos de nuevo. Hoy empezamos un proyecto emocionante que nos servirá para asentar todo lo aprendido del maravilloso mundo de las bases de datos usando algo que seguro muchos de vosotros conocéis: ¡Pokémon!

Durante estas dos sesiones, vamos a construir y consultar nuestra propia Pokédex digital usando SQL y SQLite Hoy las pondremos a prueba de forma muy práctica. Al final de esta primera sesión, tendrán su base de datos creada, llena de Pokémon y habrán realizado sus primeras exploraciones.

- **Objetivos de la Sesión 1:**
  - Comprender la estructura de los datos Pokémon proporcionados.
  - Crear una base de datos SQLite.
  - Ejecutar un script SQL para crear y poblar la tabla `pokemon`.
  - Realizar consultas `SELECT` básicas para familiarizarse con los datos.
  - Introducir y crear una nueva tabla relacionada (`Trainers`).

#### Módulo 2: Refresco Teórico Rápido y Calentamiento

**Ejercicio 1: ¡Calentamiento SQL Extendido - Modo Test!**

Antes de sumergirnos en la Pokédex, vamos a activar nuestras neuronas con un test tipo test más completo sobre los fundamentos. ¡Es como un combate de gimnasio para probar nuestra preparación!

**Instrucciones para la realización:**

1. Abre un **nuevo documento** en un procesador de textos.
2. En la parte superior del documento, escribe tu **Nombre y Apellido** y el título: **Proyecto Pokédex**.
3. Copia y pega las preguntas del cuestionario que se encuentra a continuación en el documento.
4. Para cada pregunta, **marca o resalta claramente la opción que consideres correcta**. Solo hay una opción correcta por pregunta.
5. **Guarda** este documento. Será **la primera parte del archivo PDF final** que entregarás al completar todo el proyecto. ¡Así que guárdalo bien!

**Cuestionario Rápido Tipo Test (¡Elige la respuesta correcta!):**

- **Pregunta 1: ¿Qué es SQL?**
  - a) Un sistema operativo para servidores de bases de datos.
  - b) Un lenguaje estándar utilizado para gestionar y manipular bases de datos relacionales.
  - c) Un tipo de hardware específico para almacenar grandes cantidades de datos.
  - d) Un software de diseño gráfico para crear diagramas de bases de datos.

- **Pregunta 2: ¿Qué es una base de datos (BBDD)?**
  - a) Una hoja de cálculo avanzada con macros.
  - b) Un programa específico para enviar correos electrónicos masivos.
  - c) Una colección estructurada y organizada de datos, almacenada electrónicamente.
  - d) Un tipo de memoria volátil utilizada por el procesador.

- **Pregunta 3: ¿Cuál es una característica distintiva de SQLite, el motor que usamos?**
  - a) Requiere una instalación compleja y un servicio de servidor siempre activo.
  - b) Es el sistema gestor de bases de datos más rápido para consultas multiusuario masivas.
  - c) Almacena toda la base de datos en un único archivo en el disco, sin necesidad de un proceso servidor.
  - d) Solo permite almacenar hasta 100 registros por tabla.

- **Pregunta 4: En el contexto de bases de datos relacionales, ¿qué son una 'tabla' y un 'registro' (fila)?**
  - a) Tabla: Un informe impreso. Registro: Un gráfico dentro del informe.
  - b) Tabla: El nombre de la base de datos. Registro: La contraseña de acceso.
  - c) Tabla: Una estructura que organiza datos relacionados en filas y columnas. Registro: Una fila individual que representa una entidad o instancia única en la tabla.
  - d) Tabla: Una consulta SQL guardada. Registro: El resultado de ejecutar la consulta.

- **Pregunta 5: ¿Cuál de las siguientes opciones muestra la sintaxis MÁS BÁSICA y correcta para comenzar a crear una tabla llamada `Jugadores`?**
  - a) `NUEVA TABLA Jugadores { ... }`
  - b) `CREATE TABLE Jugadores ( ... );`
  - c) `INSERT INTO Jugadores [ ... ];`
  - d) `SELECT TABLE Jugadores { ... };`

- **Pregunta 6: Si tienes una tabla `Pokemon` con columnas `Name`, `Type1`, `HP`, ¿qué comando usarías para seleccionar SOLO los nombres (`Name`) y puntos de vida (`HP`) de todos los Pokémon?**
  - a) `SELECT * FROM Pokemon WHERE Name, HP;`
  - b) `GET Name, HP IN Pokemon;`
  - c) `SHOW Name, HP ON Pokemon;`
  - d) `SELECT Name, HP FROM Pokemon;`

- **Pregunta 7: Usando la misma tabla `Pokemon`, ¿qué comando usarías para seleccionar TODA la información de los Pokémon cuyo `Type1` sea 'Water'?**
  - a) `SELECT ALL FROM Pokemon IF Type1 = 'Water';`
  - b) `GET * FROM Pokemon HAS Type1 = 'Water';`
  - c) `SELECT * FROM Pokemon WHERE Type1 = 'Water';`
  - d) `SHOW * FROM Pokemon WHEN Type1 IS 'Water';`

- **Pregunta 8: ¿Cuál es el propósito principal de la constraint `PRIMARY KEY` (Clave Primaria) en una columna de una tabla?**
  - a) Asegurar que todos los valores en esa columna sean textos largos.
  - b) Permitir que la columna contenga valores duplicados para facilitar búsquedas.
  - c) Identificar de forma única cada registro (fila) en la tabla, asegurando que no haya duplicados en esa columna.
  - d) Ordenar automáticamente la tabla basándose en esa columna.

- **Pregunta 9: Si al definir una columna en `CREATE TABLE` añades la constraint `NOT NULL`, ¿qué significa?**
  - a) Que esa columna solo puede contener el valor numérico cero.
  - b) Que esa columna no puede contener caracteres especiales.
  - c) Que es obligatorio proporcionar un valor para esa columna en cada nuevo registro; no puede dejarse vacía (NULL).
  - d) Que los valores de esa columna se cifrarán automáticamente.

- **Pregunta 10: ¿Qué operación realiza el comando `INSERT INTO` en SQL?**
  - a) Modifica datos existentes en una o más filas de una tabla.
  - b) Elimina una tabla completa de la base de datos.
  - c) Añade nuevos registros (filas) a una tabla existente.
  - d) Recupera o selecciona datos de una o más tablas.

---

¡Genial! Una vez respondido, aseguraos de guardar ese documento, será parte de la entrega final. Este test más completo nos asegura que tenemos las herramientas conceptuales listas.

Ahora sí, vamos a lo práctico: Encontraréis un archivo llamado `data.csv` que contiene datos de los Pokémon.
Este archivo está en formato CSV (Comma Separated Values), que es un formato común para almacenar datos tabulares. Cada línea representa un registro (un Pokémon) y cada columna está separada por comas. ¡Es como una hoja de cálculo, pero en texto plano!

Extracto:

```csv
1,Bulbasaur,49,5120,70,318,45,49,1059860,0.7,45,88.1,65,65,45,grass,poison,6.9,1,0
2,Ivysaur,62,5120,70,405,45,63,1059860,1.0,60,88.1,80,80,60,grass,poison,13.0,1,0
3,Venusaur,100,5120,70,625,45,123,1059860,2.0,80,88.1,122,120,80,grass,poison,100.0,1,0
```

>[!NOTE]
> Que el formato CSV, el estándar para datos, use comas como separador nos complica las cosas un poco a los hispanohablantes, ya que en español usamos comas para separar los decimales. En inglés el carácter para indicar decimales es el punto, por lo que para ellos no es un problema utilizarlo como separador. El archivo que les adjunto utiliza la notación anglosajona, por lo que no debería haber problemas para leerlo.

---

Repasaremos la estructura de `CREATE TABLE` (definir columnas, tipos de datos como `INTEGER`, `TEXT`, `REAL`, y la importantísima `PRIMARY KEY`).

También recordaremos `INSERT INTO` para añadir datos.  `DROP TABLE IF EXISTS`, `CREATE TABLE` y los `INSERT`.

Recordemos la importancia de la `PRIMARY KEY (pokedex_number)` y por qué es importante (identificador único).

Mencionar brevemente los tipos de datos usados.

#### Módulo 3: ¡Manos a la Obra! Creando la Base de Datos y la Tabla Pokémon

¡Es hora de la acción! Abran su cliente SQLite preferido (DB Browser, DBeaver, terminal...). Lo primero es crear nuestra base de datos. Será un simple archivo."

- **Instrucción Práctica 1:** Crear un nuevo archivo de base de datos SQLite (`pokedex.db`).

¡Genial! Ya tenemos el 'contenedor'. Ahora, vamos a darle vida. Crearemos la tabla `pokemon` y la llenaremos con datos.

- **Instrucción Práctica 2:** Crea tu script SQL para crear la tabla examinando los datos. Abajo encontraras el script inicial que puedes usar como base. Completa los tipos de datos y restricciones que faltan. ¡No olvides guardar el archivo!
  
```sql
-- Este es un ejemplo de cómo crear la tabla pokemon.
-- Completa los ??? con los tipos de datos correctos (INTEGER, REAL, TEXT)
-- para ello, revisa el archivo data.csv que hemos visto antes
-- y añade las restricciones NOT NULL y CHECK donde se indica.

DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon (
    pokedex_number INTEGER,         -- Añadir restricción PRIMARY KEY aquí
    name TEXT,                      -- Añadir restricción UNIQUE aquí
    attack ???,
    base_egg_steps INTEGER,
    base_happiness INTEGER,
    base_total ???,
    capture_rate INTEGER,
    defense INTEGER,
    experience_growth ???,
    height_m ???,
    hp ???,
    percentage_male ???,
    sp_attack INTEGER,
    sp_defense INTEGER,
    speed INTEGER,
    type1 ???,                      -- Añadir restricción NOT NULL aquí
    type2 TEXT,
    weight_kg ???,
    generation INTEGER,
    is_legendary ???                -- Añadir restricción CHECK(is_legendary IN (0, 1)) aquí
);
```

Si todo ha ido bien, nuestra tabla `pokemon` debería estar creada pero todavía sin datos. Toma una captura de pantalla de la tabla vacía y añádela a tu documento de texto.

#### Módulo 4: Poblando la Pokédex

Para llenar la tabla, una vez hemos creada ésta, lo que haremos será importar el archivo CSV que hemos visto antes. SQLite tiene una función muy útil para esto:

> **Archivo -> Importar -> Tabla de archivo CSV**

Importante es que cambiemos el nombre de la tabla a `pokemon` (si no lo hace automáticamente) y que seleccionemos el delimitador correcto (en este caso, la coma).

![Abriendo un archivo CSV en SQLite](/assets/images/abriendocsv.gif)

- **Instrucción Práctica 3 (Exploración Inicial):**

Primero, verifica que se han cargado los datos y toma una captura de pantalla que añadirás a tu documento.

Ejecutemos ahora algunas consultas básicas para quitar las telarañas de nuestro SQL.

- Mostrar algunos Pokémon: `SELECT * FROM pokemon LIMIT 10;`
- Mostrar nombres y tipos: `SELECT name, type1, type2 FROM pokemon WHERE generation = 1 LIMIT 5;`
- Contar cuántos Pokémon hay: `SELECT COUNT(*) FROM pokemon;`

Añade los resultados de estas consultas a tu documento de texto. ¡Ya tenemos nuestra Pokédex llena de Pokémon!

Por último, vamos a añadir una nueva tabla para los entrenadores. Esto nos permitirá relacionar Pokémon con sus entrenadores.

- **Instrucción Práctica 4 (Nueva Tabla):**
  - Diseñar la tabla `Trainers`: Contendrás las siguientes columnas:
    - `TrainerID`: Clave primaria, autoincremental. --> Para ello pon `AUTOINCREMENT` en la definición de la columna, justo después de `PRIMARY KEY`.
    - `Name`: Nombre del entrenador (no puede ser nulo).
    - `Region`: Región del entrenador (opcional).
  - Escribir y ejecutar el `CREATE TABLE`: Cada ?? deberá ser reemplazado por una única palabra.

      ```sql
      CREATE TABLE ?? (
        ?? INTEGER ?? ?? ??,
        ?? TEXT ?? ??, -- ¡Asegurémonos de que tengan nombre!
        Region ??
      );
      ```

  - Insertar algunos entrenadores de ejemplo: Te propongo algunos pero puedes usar los que te parezca mejor.

``` python
    {'Entrenador': 'Ash Ketchum', 'Región': 'Kanto'},
    {'Entrenador': 'Misty', 'Región': 'Kanto'},
    {'Entrenador': 'Brock', 'Región': 'Kanto'},
    {'Entrenador': 'Profesor Oak', 'Región': 'Kanto'}
```

Finalmente, verifica la tabla `Trainers`: `SELECT * FROM Trainers;` y toma una captura de pantalla que añadirás a tu documento.

#### Módulo 5: Reflexión**

¡Excelente trabajo, equipo! Hoy hemos creado nuestra base de datos `pokedex.db`, hemos cargado cientos de Pokémon y hasta hemos añadido una tabla para los entrenadores. ¿Qué les ha parecido? ¿Alguna dificultad con los comandos o la herramienta? ¿Qué fue lo más interesante?"

Para la próxima sesión, piensen: ¿Qué preguntas interesantes podríamos hacerle a nuestra Pokédex? ¿Cómo buscarían Pokémon específicos? ¿Cómo ordenarían los resultados? ¡Preparen sus mentes para consultas más desafiantes!

¡Nos vemos en la próxima sesión para convertirnos en verdaderos maestros de los datos consultando nuestra Pokédex!

---

### Sesión 2: ¡Dominando la Pokédex! - Consultas Avanzadas y Mantenimiento

#### Módulo 1: Recapitulación y Objetivos

¡Bienvenidos de nuevo, investigadores Pokémon! En la sesión anterior, sentamos las bases de nuestra Pokédex digital. Tenemos la tabla `pokemon` llena de datos y nuestra tabla `Trainers`. Hoy nos sumergiremos más profundo: aprenderemos a hacer preguntas más complejas a nuestra base de datos, a ordenar los resultados como queramos y a mantener nuestra información actualizada. ¡Prepárense para dominar el arte de la consulta SQL!

- **Objetivos de la Sesión 2:**

  - Comentar la importancia del manual de estilo y el fallo de capitalización de las tablas pokemon y Trainers.
  - Practicar consultas `SELECT` con condiciones complejas (`WHERE` con `AND`, `OR`, `NOT`, `LIKE`).
  - Utilizar `ORDER BY` para ordenar resultados.
  - Realizar operaciones de agregación (`COUNT`, `AVG`, `MAX`, `MIN`, `SUM`).
  - Practicar operaciones `UPDATE` y `DELETE` de forma segura.
  - Introducir como se relacionarían las tablas `pokemon` y `Trainers` usando una tabla intermedia (o tabla de unión - opcional si hay tiempo).
  
#### Módulo 2: Refresco Teórico

Hoy añadiremos más potencia a ese `WHERE` usando `AND` (ambas condiciones ciertas), `OR` (al menos una cierta), `NOT` (negar condición) y `LIKE` (para buscar patrones en texto, usando `%` como comodín).

Todo esto ya lo hemos trabajado durante el curso, pero lo repasamos aquí para que quede claro. ¡No queremos que se nos escape nada!

A continuación, encontrarás algunos ejemplos de la sintaxis de `WHERE`, en una tabla de productos ficticia. Puedes usarla como referencia para tus consultas:

```sql
-- Selecciona productos electrónicos baratos o ropa cara
SELECT nombre, categoria, precio
FROM productos
WHERE (categoria = 'Electrónica' AND precio < 100)
   OR (categoria = 'Ropa' AND precio > 100);

-- Excluye productos de una categoría específica
SELECT nombre, categoria, precio
FROM productos
WHERE NOT categoria = 'Juguetes';

-- Busca productos cuyo nombre contenga "Pro" (comodín %)
SELECT nombre, categoria, precio
FROM productos
WHERE nombre LIKE '%Pro%';
```

También repasaremos `ORDER BY` para ordenar y las funciones de agregación como `COUNT`, `AVG` (promedio), `MAX`, `MIN`, `SUM`. Estos a menudo se usan con `GROUP BY` para agrupar filas, pero como esto no lo hemos visto usaremos nuestra cláusula `WHERE` que para para una consulta básica funciona igual.

```sql
-- Ordena los productos por precio ascendente
SELECT nombre, categoria, precio
FROM productos
ORDER BY precio ASC;

-- Ordena por categoría y, dentro de cada categoría, por precio descendente
SELECT nombre, categoria, precio
FROM productos
ORDER BY categoria ASC, precio DESC;

-- Cuenta cuántos productos hay en cada categoría
SELECT categoria, COUNT(*) AS total_productos
FROM productos
WHERE precio > 50
GROUP BY categoria;

-- Promedio de precios en electrónica
SELECT AVG(precio) AS promedio_precio
FROM productos
WHERE categoria = 'Electrónica';

-- Precio máximo y mínimo de toda la tabla
SELECT MAX(precio) AS precio_maximo, MIN(precio) AS precio_minimo
FROM productos;
```

Finalmente, veremos cómo modificar datos con `UPDATE` y eliminar con `DELETE`. ¡Mucho ojo con `UPDATE` y `DELETE`! Siempre, siempre usen `WHERE` o podrían cargarse toda la tabla. Es como la autodestrucción del Voltorb. ¡No queremos eso!

```sql
-- Aumenta el precio de todos los productos electrónicos en un 10%
UPDATE productos
SET precio = precio * 1.10
WHERE categoria = 'Electrónica';

-- Cambia la categoría de un producto específico
UPDATE productos
SET categoria = 'Electrodomésticos'
WHERE nombre = 'Cafetera Pro';

-- Borra productos de la categoría 'Juguetes' cuyo precio sea menor a 20
DELETE FROM productos
WHERE categoria = 'Juguetes' AND precio < 20;

-- Borra todos los productos (¡Peligro: no uses esto sin `WHERE`!)
DELETE FROM productos
WHERE 1=1; -- Mantén este filtro para evitar la catástrofe tipo Voltorb.
```

Recuerda el `WHERE`, no te conviertas en un meme informático.

![Delete sin where](/assets/images/deletewhere.jpeg)

#### Módulo 3: Renombrando Tablas y Columnas**

¡Vamos a poner a prueba esos comandos! Abrid vuestra `pokedex.db` y a consultar.

Pero antes una cuestión que habitualmente se pasa por alto: **el manual de estilo**. Es importante que sigamos un estilo de escritura claro y consistente. Además de que da mala imagen no hacerlo, es una fuente **muy común** de errores en el código. ¡Yo he estado ahí y lo he visto ocurrir, creedme!

##### Manual de Estilo: Mayúsculas y Minúsculas

Con SQLite (no así con otros Sistemas Gestores de Bases de Datos como PostgreSQL) pasa una cosa curiosa, y es que será sensible o no a las mayúsculas dependiendo de si cuando se creó la tabla se entrecomillaron los nombres de las tablas y columnas entre comillas o no.

Si se introducen entre comillas, serán sensibles a mayúsculas y minúsculas, y si no se introducen entre comillas, no lo serán. Por lo que si creamos la tabla `"pokemon"` con comillas, será sensible a mayúsculas y minúsculas, y si la creamos sin comillas (lo más probable), no lo será.

Esto afectaría al nombre de la tabla y a los nombres de las columnas. Nosotros hemos cometido el "error" de nombrar una tabla `pokemon` (convención **snake_case**) y otra `Trainers` (convención **PascalCase**). Esto es un error de estilo, ya que no se ha seguido una convención única. Tan sencillo como que una comienza por minúsculas y la otra por mayúsculas. Esto puede llevar a confusiones y errores al escribir consultas. Afortunadamente, SQLite no es sensible a mayúsculas y minúsculas, pero en otros sistemas sí lo es. En cualquier caso lo recomendable es ceñirnos **a un único estilo**.

##### Manual de Estilo: Singular vs Plural

Este es otro punto de debate habitual. ¿Debemos utilizar singular (por ejemplo `Factura`) o plural (`Facturas`) para el nombre de nuestras tablas y columnas? Todo tiene sus ventajas e inconvenientes, pero intentaremos ceñirnos al estilo que propone Microsoft.

Microsoft en su base de datos ilustrativa **AdventureWorks** utiliza el estilo **singular** para los nombres de las tablas. Por ejemplo, `Product` en lugar de `Products`. Esto se debe a que cada fila de la tabla representa un único producto, y el nombre de la tabla refleja eso.

Aquí observamos que la tabla `Trainers` está en plural, mientras que la tabla `pokemon` está en singular. Esto es un error de estilo, ya que no se ha seguido una convención única. Lo recomendable es ceñirnos **a un único estilo**, por lo que pasaremos a renombrar la tabla `Trainers` a `trainer`.

**Instrucción Práctica 1 (Renombrando la Tabla):**

**Renombra la tabla `Trainers` a `trainer`.**

```sql
ALTER TABLE NombreViejos RENAME TO nombreNuevo;
```

>[!IMPORTANT]
>Toma una captura de pantalla de la consulta ejecutada para renombrar la tabla, así como de la tabla `pokemon` renombrada y añádela a tu documento.

La siguiente petición que nos llega es renombrar la columna `pokedex_number` de la tabla `pokemon` a `pokedexID`. Para que quede cristalino que se trata de un identificador único, y no sólo del número de la Pokédex. Esto es un cambio de nombre, no de tipo de dato. Por lo que no es necesario volver a crear la tabla.

**Instrucción Práctica 2 (Renombrando Columnas):**

**Renombra la columna `pokedex_number` de la tabla `pokemon` a `pokedexID`.**

```sql
ALTER TABLE tabla_en_cuestion RENAME COLUMN nombre_viejo TO nombre_nuevo;
```

>[!IMPORTANT]
>Recuerda tomar una captura de pantalla de cada consulta ejecutada y de los resultados obtenidos.

---

### Módulo 4: ¡Preparación para la Liga de Datos Pokémon!

¡Entrenadores de datos! Ya tenemos nuestra Pokédex operativa. Ahora, vamos a usarla para prepararnos para el desafío definitivo: ¡La Liga de Datos Pokémon! Para ganar, no basta con capturarlos a todos, ¡hay que entenderlos! Usaremos SQL para analizar fortalezas, debilidades y estadísticas clave. ¡Que comience el análisis estratégico!

>[!IMPORTANT]
> Recuerda continuar tomando capturas de pantallas de las consultas y sus resultados. ¡Son parte de tu entrega final!

---

#### Instrucción Práctica 3: Estudiando al Rival - Filtrado Avanzado (`WHERE`)

>[!NOTE]
> Esta sección se compone de varios escenarios. Deberás resolverlos todos.

Todo buen entrenador estudia a sus oponentes. Vamos a usar `WHERE` con `AND`, `OR`, `NOT` y `LIKE` para encontrar Pokémon con características específicas que podríamos enfrentar o necesitar.

- **Escenario 1: ¡El Gimnasio de Roca!** El líder usa Pokémon de tipo 'Roca' (`rock`) de la Generación 1. ¡Identifícalos para preparar tu estrategia!

Deberás seleccionar los Pokémon que sean de tipo 'Roca' (`rock`) y que pertenezcan a la Generación 1. Recuerda que los Pokémon pueden tener hasta dos tipos, por lo que deberás filtrar ambos tipos.

- **Escenario 2: Buscando Atacantes Potentes.** Necesitamos potencia bruta en nuestro equipo.

Busca Pokémon que NO sean legendarios (`is_legendary = 0`) pero tengan un Ataque (`attack`) superior a 120.

- **Escenario 3: Cobertura de Tipos.** Un equipo equilibrado necesita cubrir varias amenazas.

Busca Pokémon que sean de tipo 'Agua' (`water`) O 'Eléctrico' (`electric`), ¡excelentes contra muchos tipos! Recuerda que los Pokémon pueden tener hasta dos tipos, por lo que deberás filtrar ambos tipos.

- **Escenario 4: ¡Battle Royale!** Sospechamos que hay varios Pokémon de la realeza. Alistarlos para nuestro equipo nos dará un bonus.

Busca todos los Pokémon cuyo nombre contenga `'king'` o `'queen'`.

---

#### Instrucción Práctica 4: Clasificando a los Contendientes - Ordenando Resultados (`ORDER BY`)

Una vez identificados los candidatos, hay que clasificarlos. `ORDER BY` nos ayuda a ver quién destaca en cada categoría. `LIMIT` nos permite quedarnos con los mejores.

- **Escenario 5: Ranking de Velocidad:** ¡La velocidad es clave! Lista todos los Pokémon ordenados por su estadística de Velocidad (`speed`) de mayor a menor.

- **Escenario 6: Los tanques de los humildes en Kanto:** A Kanto también ha llegado la crisis, y apenas podemos permitirnos una miserable Poké Ball. Sin embargo tenemos que montar un equipo que tanquee como ninguno y sea fácil de capturar.

EL profesor Oak se ha currado una función de puntuación a tal efecto `score = hp * defense * capture_rate`. No tiene en cuenta la `sp_def` pero bueno, no está mal como primera aproximación.

**Encuentra el top 10 Pokémon de Kanto con la puntuación `score` más alta**. Recuerda que los Pokémon de Kanto son aquellos cuya `generation` es 1. ¡No olvides usar `ORDER BY` y `LIMIT`!

---

#### Instrucción Práctica 5: Análisis Estadístico de la Liga - Agregación con `WHERE`

Vamos a profundizar con estadísticas globales usando funciones como `COUNT`, `AVG`, `MAX`, `MIN`. A diferencia de agrupar (que veremos opcionalmente más abajo), aquí aplicaremos estas funciones al conjunto de datos filtrado por `WHERE` para obtener valores específicos.

- **Escenario 7: Contando por Tipo Específico:** Queremos saber cuántos Pokémon de tipo 'Fuego' (`fire`) hay en nuestra Pokédex para evaluar su prevalencia. Utiliza la clausula `WHERE` para filtrar (recuerda que hay dos tipos) y `COUNT` para el conteo. Compáralo con su rival más directo, el tipo 'Agua' (`water`).

- **Escenario 8: Tier list de generaciones (Filtrado):** Calculemos el poder base total (`base_total`) **promedio** (AVG) de cada generación.

Como no hemos visto `GROUP BY` lo haremos generación a generación, filtrando por `generation` en el `WHERE` y usando `AVG(base_total)` para cada una.

Haz una tier list basada en el poder base total promedio de cada generación. ¿Cuál es la generación más fuerte? ¿Y la más débil?

> [!TIP]
> **Profundización**: Intenta hacer lo mismo pero usando la cláusula `GROUP BY` para agrupar por generación y calcular el promedio de `base_total`. Investiga cómo funciona `GROUP BY` para calcular valores agregados por grupos. ¡Es un concepto clave en SQL!

---

### Módulo 5: Conociendo a MissingNo. - Manejo de Datos Inesperados

#### Instrucción Práctica 6: ¡Alerta de Glitch! Gestionando a MissingNo. (`INSERT`, `UPDATE`, `DELETE`)

Entrenadores, hasta ahora hemos trabajado con datos 'limpios'. Pero en el mundo real (¡y en los videojuegos!), a veces surgen anomalías, datos inesperados... ¡o incluso glitches! Hoy vamos a simular la aparición del glitch más famoso de todos: **MissingNo.** en nuestra propia Pokédex.

![MissingNo](/assets/images/missingno.jpg)

¡No se asusten! Lo usaremos para aprender a manejar datos inesperados y, sobre todo, para practicar `UPDATE` y `DELETE` con la máxima precisión. Un error aquí podría... bueno, digamos que no queremos corromper nuestra Pokédex."

- **Paso 1: La Invocación - `INSERT` de MissingNo.**

    Vamos a introducir manualmente a MissingNo. en nuestra tabla `pokemon`. Usaremos el `pokedexID = 0`, un número que a menudo se asocia con él en las leyendas urbanas de los juegos.

    Copien y ejecuten esta sentencia `INSERT`. ¡Están a punto de añadir un glitch a su base de datos!"

    ```sql

    -- ¡Insertando a MissingNo.! ¡Procedan con curiosidad pero con cuidado!
    INSERT INTO pokemon (
        pokedexID, name, attack, base_egg_steps, base_happiness, base_total, 
        capture_rate, defense, experience_growth, height_m, hp, percentage_male, 
        sp_attack, sp_defense, speed, type1, type2, weight_kg, generation, is_legendary
    ) VALUES (
        0, 'MissingNo.', 136, 5120, 70, 600, -- Stats basados en leyendas y valores comunes
        45, 0, 1000000, 3.0, 33, NULL,      -- Usamos NULL para genderless
        6, 6, 29, 'Bird', 'Normal', 1590.8, 1, 0 -- Tipos clásicos y datos conocidos
    );
    ```

    **Verificación:** "¡Rápido! Comprueben si el glitch ha aparecido. Busquen al Pokémon con `pokedexID = 0`.

    ```sql
    SELECT * FROM pokemon WHERE pokedexID = 0;
    ```

- **Paso 2: Conteniendo el Glitch - `UPDATE` para Renombrar**

    Tener a 'MissingNo.' tal cual en la base de datos es inquietante. Podría empezar a causar problemas. Vamos a intentar 'contenerlo' cambiándole el nombre a algo menos amenazante, como 'GlitchedEntity'. ¡Pero cuidado! Debemos asegurarnos de cambiar SOLO el nombre de la entrada con `pokedexID = 0`. ¡Usen `UPDATE` con un `WHERE` preciso!

    > [!TIP]
    > Puedes hacer una copia de la base de datos antes de modificarla, por si las moscas.

    **Verificación:** "Comprueben si el cambio de nombre ha funcionado. Vuelvan a buscar por `pokedexID = 0`."

  ```sql
    SELECT name FROM pokemon WHERE pokedexID = 0; 
    -- Debería mostrar 'GlitchedEntity'
  ```

    Bien, parece que hemos 'neutralizado' su nombre. Pero la entidad sigue ahí... y su naturaleza es inestable.

- **Paso 3: La Purga - `DELETE` Antes de la Corrupción Total**

    No podemos arriesgarnos. La presencia de esta entidad glitch, aunque renombrada, es un peligro para la integridad de nuestra Pokédex. ¡Debemos eliminarla antes de que se extienda! Usaremos `DELETE`, pero esta es la operación más peligrosa. Recuerden: **¡¡UN `DELETE` SIN `WHERE` BORRA TODA LA TABLA!!** Sería la corrupción definitiva.

    **¡¡TRIPLE COMPROBACIÓN DEL `WHERE`!!** Asegúrense de que van a borrar SOLO la entidad con `pokedexID = 0`."

    ¡Ejecutad la eliminación con máxima precaución!

    **Verificación Final:** "Comprueben si la entidad glitch ha sido purgada definitivamente. Busquen de nuevo por `pokedexID = 0`."

    ```sql
      SELECT * FROM pokemon WHERE pokedexID = 0; 
      -- ¡Debería devolver 0 filas! ¡Hemos eliminado el glitch con éxito!
    ```

¡Felicidades! Habéis manejado una anomalía peligrosa usando `INSERT`, `UPDATE` y `DELETE` con la precisión necesaria. También habéis visto lo fácil que sería causar un desastre olvidando o escribiendo mal la cláusula `WHERE`. ¡Que esta lección sobre MissingNo. os sirva como recordatorio constante de la importancia de la precisión en SQL!

---

### Profundización I: Agrupando Datos con `GROUP BY`

¡Atención, entrenadores avanzados! Hemos visto cómo calcular totales o promedios sobre conjuntos filtrados con `WHERE`. Pero, ¿y si quisiéramos ver esas estadísticas *para cada categoría* diferente dentro de nuestros datos, todo en una sola consulta? Por ejemplo, ¿el recuento de Pokémon para *cada* tipo? Para eso existe `GROUP BY`.

**¿Qué hace `GROUP BY`?**
La cláusula `GROUP BY` agrupa las filas que tienen el mismo valor en una o más columnas (por ejemplo, todos los 'fire', todos los 'water', etc.). Luego, las funciones de agregación (`COUNT`, `AVG`, `SUM`, `MAX`, `MIN`) que usemos en el `SELECT` se aplicarán a cada uno de estos grupos por separado.

**Sintaxis básica:**

```sql
SELECT columna_agrupadora, FUNCION_AGREGACION(columna_calculo)
FROM nombre_tabla
WHERE [condiciones si aplican antes de agrupar]
GROUP BY columna_agrupadora
ORDER BY [orden si aplica después de agrupar];
```

**Ejemplo 1: Contar Pokémon por cada Tipo Primario (Dominancia de Tipos)**
En lugar de contar solo los de tipo 'Fuego' o 'Agua' uno por uno con `WHERE`, `GROUP BY type1` nos permite contar cuántos hay *de cada* tipo primario existente en una sola consulta:

```sql
-- Contar cuántos Pokémon hay por CADA tipo primario
SELECT type1, COUNT(*) as total_pokemon 
FROM pokemon 
GROUP BY type1 
ORDER BY total_pokemon DESC; 
-- Compara este resultado con contar uno a uno con WHERE. ¡Mucho más rápido y completo!
```

**Ejemplo 2: Comparar Promedios por Categoría (Poder Legendario vs. Común)**
En vez de hacer dos consultas separadas con `WHERE` (una para legendarios y otra para no legendarios), podemos agrupar por la columna `is_legendary` y calcular el promedio de `base_total` para cada grupo (0 y 1) simultáneamente:

```sql
-- Promedio de base_total agrupado por si es legendario o no
SELECT 
    CASE is_legendary 
        WHEN 1 THEN 'Legendario' 
        WHEN 0 THEN 'No Legendario' 
    END as Categoria, 
    AVG(base_total) as promedio_base_total 
FROM pokemon 
GROUP BY is_legendary;
-- ¡Obtenemos ambos promedios en una sola consulta, perfecto para comparar!
```

`GROUP BY` es una herramienta muy potente para resumir y analizar datos por categorías. ¡Si te interesa, investiga más sobre ella y prueba a agrupar por otras columnas como `generation`!"

---

### (Profundización II - Introducción a JOIN)

"Hemos analizado Pokémon y tenemos entrenadores en la tabla `trainer` (¡recuerden que la renombramos!). Pero, ¿cómo sabemos qué Pokémon pertenece a qué entrenador? Necesitaríamos una tabla intermedia, una 'tabla de capturas', que relacione `trainerID` con `pokedexID`.

Una vez creada esta tabla intermedia, podríamos usar `JOIN` para combinar datos de ambas tablas. `JOIN` nos permite unir filas de dos o más tablas basadas en una relación entre ellas. Por ejemplo, si tenemos una tabla `Pokemon_Trainers` que relaciona `pokedexID` con `trainerID`, podríamos hacer algo como:

Hoy solo lo mencionamos conceptualmente, pero es fundamental para preguntas como '¿Qué Pokémon tiene Ash?' o '¿Qué entrenadores tienen un Pikachu?'. ¡Es la base de las bases de datos relacionales que conectan información de distintas tablas!

---

## Conclusión y Reflexión Final

- **Reflexión Final:** ¡Felicidades, habéis superado la Liga de Datos Pokémon! Habéis utilizado SQL para explorar, analizar, ordenar y hasta modificar datos como verdaderos expertos.

¿Qué estrategia de consulta os resultó más útil o interesante? ¿Dónde creéis que podríais aplicar estas habilidades de consulta y análisis de datos fuera de este proyecto? SQL es su navaja suiza para interactuar con el vasto mundo de la información estructurada. ¡Seguid practicando y explorando, que el viaje del maestro de datos acaba de empezar!"

---

## Notas personales acerca de la Evaluación y Adaptabilidad

**Evaluación y Retroalimentación:**

- **Continua:** Observar la participación, ayudar con dudas durante las partes prácticas.
- **Formativa:** Revisar las consultas que realizan, especialmente en el desafío final.
- **Criterios de calificación:**
  - Creación exitosa de la BBDD y tablas.
  - Ejecución correcta del script inicial.
  - Capacidad para formular consultas `SELECT` básicas y complejas.
  - Uso correcto de `WHERE`, `ORDER BY`, `GROUP BY` (opcionalmente).
  - Comprensión de la importancia del `WHERE` en `UPDATE` y `DELETE`.

**Adaptabilidad:**

- **Nivel Básico:** Si lo encuentras complicado céntrate en las primeras cuestiones de cada módulo y en las consultas más sencillas. Salta al siguiente módulo si es necesario.
- **Nivel Avanzado:** Introducir `JOIN` con la tabla `Trainers` (creando una tabla intermedia `Pokemon_Trainers`), explorar subconsultas simples, el `GROUP BY` / `HAVING` o añadir más restricciones (`UNIQUE`, `CHECK`).

---
