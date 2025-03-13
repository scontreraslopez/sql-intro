# Cuestionario TechCorp

A continuación se presenta un cuestionario tipo test con 20 preguntas, basado en un escenario real de cliente. En este escenario, **TechCorp** necesita gestionar la información de sus empleados. Se parte de la siguiente tabla inicial, la cual viene poblada con algunos registros de ejemplo:

---

## Escenario Inicial

Se tiene la tabla **Empleados** definida de la siguiente forma:

```sql
CREATE TABLE Empleados (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  fecha_ingreso DATE,
  salario DECIMAL(10,2)
);
```

**Datos de ejemplo:**

```
+----+--------+----------+-------------------------------+--------------+---------+
| id | nombre | apellido | email                         | fecha_ingreso| salario |
+----+--------+----------+-------------------------------+--------------+---------+
| 1  | Juan   | Pérez    | juan.perez@techcorp.com       | 2020-05-10   | 3500.00 |
| 2  | Ana    | Gómez    | ana.gomez@techcorp.com        | 2019-03-15   | 4000.00 |
| 3  | Luis   | Martínez | luis.martinez@techcorp.com    | 2021-07-22   | 3000.00 |
+----+--------+----------+-------------------------------+--------------+---------+
```

Con base en este escenario, el cliente solicita implementar nuevas funcionalidades y modificaciones. A continuación se plantean 20 preguntas en las que el alumno deberá elegir la opción correcta.

---

## Pregunta 1: Consulta básica SELECT

**Enunciado:**  
Para visualizar todos los registros de la tabla **Empleados**, ¿cuál de las siguientes consultas es la correcta?

**Opciones:**

A)  
```sql
SELECT * FROM Empleados;
```  

B)  
```sql
SELECT ALL FROM Empleados;
```  

C)  
```sql
SELECT Empleados FROM *;
```  

D)  
```sql
SELECT ALL COLUMNS FROM Empleados;
```

## Pregunta 2: Seleccionar columnas específicas

**Enunciado:**  
El cliente requiere ver únicamente el **nombre** y el **email** de cada empleado. ¿Cuál de las siguientes consultas cumple este requerimiento?

**Opciones:**

A)  
```sql
SELECT nombre, email FROM Empleados;
```  

B)  
```sql
SELECT nombre, correo_electronico FROM Empleados;
```  

C)  
```sql
SELECT * FROM Empleados WHERE nombre, email;
```  

D)  
```sql
SELECT (nombre, email) FROM Empleados;
```

## Pregunta 3: Insertar un nuevo registro

**Enunciado:**  
Se debe agregar un nuevo empleado con la siguiente información:  
• id = 4  
• nombre = 'María'  
• apellido = 'López'  
• email = 'maria.lopez@techcorp.com'  
• fecha_ingreso = '2022-01-10'  
• salario = 3200.00  

¿Cuál es la sentencia INSERT correcta?

**Opciones:**

A)  
```sql
INSERT INTO Empleados (id, nombre, apellido, email, fecha_ingreso, salario)
VALUES (4, 'María', 'López', 'maria.lopez@techcorp.com', '2022-01-10', 3200.00);
```  

B)  
```sql
INSERT INTO Empleados VALUES (4, 'María', 'López', 'maria.lopez@techcorp.com', '2022-01-10', '3200.00');
```  

C)  
```sql
INSERT INTO Empleados (4, 'María', 'López', 'maria.lopez@techcorp.com', '2022-01-10', 3200.00);
```  

D)  
```sql
INSERT Empleados (id, nombre, apellido, email, fecha_ingreso, salario)
VALUES (4, 'María', 'López', 'maria.lopez@techcorp.com', '2022-01-10', 3200.00);
```

---

## Pregunta 4g: Agregar una nueva columna con ALTER TABLE

**Enunciado:**  
El cliente solicita incluir una nueva columna llamada **telefono** en la tabla **Empleados**; esta columna debe ser de tipo VARCHAR(15) y se permite que tenga valores nulos. ¿Cuál es la sentencia ALTER TABLE correcta?

**Opciones:**

A)  
```sql
ALTER TABLE Empleados ADD telefono VARCHAR(15) NULL;
```  

B)  
```sql
ALTER TABLE Empleados ADD COLUMN telefono VARCHAR(15);
```  

C)  
```sql
ALTER TABLE Empleados ADD telefono CHAR(15);
```  

D)
```sql
ALTER TABLE Empleados ADD COLUMN telefono VARCHAR(15) NOT NULL;
```

## Pregunta 6: Agregar clave foránea para departamentos

**Enunciado:**  
TechCorp crea la tabla **Departamentos** para organizar a los empleados y la define así:

```sql
CREATE TABLE Departamentos (
  id INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);
```

Se requiere que cada empleado esté asociado a un departamento mediante una columna **departamento_id** en la tabla **Empleados**. ¿Cuál de las siguientes sentencias ALTER TABLE agrega la columna y establece la clave foránea de forma correcta?

**Opciones:**

A)  
```sql
ALTER TABLE Empleados 
  ADD departamento_id INT, 
  ADD CONSTRAINT fk_departamento FOREIGN KEY (departamento_id) REFERENCES Departamentos(id);
```  

B)  
```sql
ALTER TABLE Empleados ADD departamento_id INT;
ALTER TABLE Empleados ADD FOREIGN KEY (departamento_id) REFERENCES Departamentos(id);
```  

C)  
```sql
ALTER TABLE Empleados ADD COLUMN departamento_id INT FOREIGN KEY REFERENCES Departamentos(id);
```  

D)  
```sql
ALTER TABLE Empleados ADD departamento_id INT, ADD CONSTRAINT FOREIGN KEY (departamento_id) REFERENCES Departamentos(id);
```


## Pregunta 8: Tipo de dato apropiado para el teléfono

**Enunciado:**  
Para almacenar números telefónicos **internacionales**, ¿cuál es el tipo de dato más adecuado para la columna **telefono**?

**Opciones:**

A) VARCHAR(15)  
B) INT  
C) CHAR(10)  
D) BIGINT




## Pregunta 10: Garantizar la unicidad del email

**Enunciado:**  
Para que no existan dos empleados con el mismo correo, ¿cuál de las siguientes definiciones de la columna **email** en la creación de la tabla es la adecuada?

**Opciones:**

A)  
```sql
email VARCHAR(100) UNIQUE
```  

B)  
```sql
email VARCHAR(100) PRIMARY KEY
```  

C)  
```sql
email VARCHAR(100) NOT NULL
```  

D)  
```sql
email VARCHAR(100) CONSTRAINT unique_email
```


## Pregunta 11: Consulta con condiciones múltiples

**Enunciado:**  
Se requiere obtener la lista de empleados que tienen un **salario** superior a 3500 y que además pertenecen al departamento con **id = 2**. ¿Cuál de las siguientes consultas es la correcta?

**Opciones:**

A)  
```sql
SELECT * FROM Empleados
WHERE salario > 3500 AND departamento_id = 2;
```  

B)  
```sql
SELECT * FROM Empleados
WHERE salario > 3500 OR departamento_id = 2;
```  

C)  
```sql
SELECT * FROM Empleados
HAVING salario > 3500 AND departamento_id = 2;
```  

D)  
```sql
SELECT * FROM Empleados
WHERE salario > 3500, departamento_id = 2;
```



## Pregunta 14: Creación de la tabla Proyectos

**Enunciado:**  
El cliente quiere gestionar proyectos y solicita crear la tabla **Proyectos** con la siguiente estructura:  
• id: INT, clave primaria  
• nombre: VARCHAR(100) (no nulo)  
• presupuesto: DECIMAL(10,2) que solo admita valores positivos  

¿Cuál de las siguientes declaraciones es correcta?

**Opciones:**

A)  
```sql
CREATE TABLE Proyectos (
  id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  presupuesto DECIMAL(10,2) CHECK (presupuesto > 0)
);
```  

B)  
```sql
CREATE TABLE Proyectos (
  id INT,
  nombre VARCHAR(100),
  presupuesto DECIMAL(10,2),
  PRIMARY KEY (id),
  CHECK (presupuesto > 0)
);
```  

C)  
```sql
CREATE TABLE Proyectos (
  id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  presupuesto DECIMAL(10,2) NOT NULL CHECK (presupuesto > 0)
);
```  

D) **Todas son correctas, aunque se recomienda usar NOT NULL para nombre y presupuesto.**

---

## Pregunta 15: Crear tabla intermedia para relación muchos a muchos

**Enunciado:**  
Dado que un empleado puede participar en varios proyectos y cada proyecto puede tener varios empleados, se requiere crear una tabla intermedia llamada **Empleado_Proyecto** con las columnas **empleado_id** y **proyecto_id**, que en conjunto formarán la clave primaria. Además, cada columna debe tener su correspondiente clave foránea. ¿Cuál es la sentencia correcta?

**Opciones:**

A)  
```sql
CREATE TABLE Empleado_Proyecto (
  empleado_id INT,
  proyecto_id INT,
  PRIMARY KEY (empleado_id, proyecto_id),
  FOREIGN KEY (empleado_id) REFERENCES Empleados(id),
  FOREIGN KEY (proyecto_id) REFERENCES Proyectos(id)
);
```  

B)  
```sql
CREATE TABLE Empleado_Proyecto (
  empleado_id INT PRIMARY KEY,
  proyecto_id INT PRIMARY KEY,
  FOREIGN KEY (empleado_id) REFERENCES Empleados(id),
  FOREIGN KEY (proyecto_id) REFERENCES Proyectos(id)
);
```  

C)  
```sql
CREATE TABLE Empleado_Proyecto (
  empleado_id INT,
  proyecto_id INT,
  UNIQUE (empleado_id, proyecto_id),
  FOREIGN KEY (empleado_id) REFERENCES Empleados(id),
  FOREIGN KEY (proyecto_id) REFERENCES Proyectos(id)
);
```  

D)  
```sql
CREATE TABLE Empleado_Proyecto (
  empleado_id INT,
  proyecto_id INT
);
```


A continuación se presenta la versión modificada de la pregunta enfocada en SQLite:

---

## Pregunta 16: Agregar constraint NOT NULL a la columna email en SQLite

**Enunciado:**  
Se detectó que, en la definición inicial de la tabla **Empleados** en SQLite, no se aplicó un constraint que asegure que la columna **email** contenga siempre un valor. Dado que SQLite no permite modificar directamente las restricciones de una columna existente mediante `ALTER TABLE`, ¿cuál es el procedimiento correcto para agregar el constraint NOT NULL a la columna **email**?

**Opciones:**

A)
```sql
ALTER TABLE Empleados ALTER COLUMN email SET NOT NULL;
```
*(Incorrecto: SQLite no admite la cláusula ALTER COLUMN para modificar restricciones.)*

B)
```sql
ALTER TABLE Empleados MODIFY email VARCHAR(100) NOT NULL;
```
*(Incorrecto: SQLite no reconoce la sintaxis MODIFY en ALTER TABLE.)*

C)  
**Procedimiento Correcto:**  
1. Crear una nueva tabla con la definición correcta, por ejemplo:
   ```sql
   CREATE TABLE Empleados_nueva (
     id INTEGER PRIMARY KEY,
     nombre VARCHAR(50),
     apellido VARCHAR(50),
     email VARCHAR(100) NOT NULL,
     fecha_ingreso DATE,
     salario DECIMAL(10,2)
   );
   ```
2. Copiar los datos desde la tabla original:
   ```sql
   INSERT INTO Empleados_nueva (id, nombre, apellido, email, fecha_ingreso, salario)
   SELECT id, nombre, apellido, email, fecha_ingreso, salario FROM Empleados;
   ```
3. Eliminar la tabla original:
   ```sql
   DROP TABLE Empleados;
   ```
4. Renombrar la nueva tabla:
   ```sql
   ALTER TABLE Empleados_nueva RENAME TO Empleados;
   ```

D)
```sql
ALTER TABLE Empleados ADD COLUMN email_new VARCHAR(100) NOT NULL;
```
*(Incorrecto: Esto crearía una nueva columna, pero no modifica la existente.)*

---



## Pregunta 20: Eliminar una columna

**Enunciado:**  
Se agregó recientemente la columna **correo_alternativo** a la tabla **Empleados**, pero el cliente ha decidido que no se requiere. ¿Cuál es la sentencia correcta para eliminar dicha columna?

**Opciones:**

A)  
```sql
ALTER TABLE Empleados DROP COLUMN correo_alternativo;
```  

B)  
```sql
ALTER TABLE Empleados REMOVE COLUMN correo_alternativo;
```  

C)  
```sql
ALTER TABLE Empleados DELETE COLUMN correo_alternativo;
```  

D)  
```sql
ALTER TABLE Empleados DROP correo_alternativo;
```
