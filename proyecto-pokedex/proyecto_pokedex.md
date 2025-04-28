# Proyecto: ¡Construyendo Nuestra Propia Pokédex Digital con SQL!

---

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

Finalmente, verifica la tabla `Trainers`: `SELECT * FROM Trainers;` y toma una captura de pantalla que añadirás a tu documento

**Módulo 5: Evaluación y Reflexión**

¡Excelente trabajo, equipo! Hoy hemos creado nuestra base de datos `pokedex.db`, hemos cargado cientos de Pokémon y hasta hemos añadido una tabla para los entrenadores. ¿Qué les ha parecido? ¿Alguna dificultad con los comandos o la herramienta? ¿Qué fue lo más interesante?"

Para la próxima sesión, piensen: ¿Qué preguntas interesantes podríamos hacerle a nuestra Pokédex? ¿Cómo buscarían Pokémon específicos? ¿Cómo ordenarían los resultados? ¡Preparen sus mentes para consultas más desafiantes!

¡Nos vemos en la próxima sesión para convertirnos en verdaderos maestros de los datos consultando nuestra Pokédex!

---
