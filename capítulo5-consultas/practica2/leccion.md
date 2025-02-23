# Funciones SQL

SQL es un lenguaje de programación y, como casi todos los lenguajes de programación, soporta funciones. Podemos usar funciones y alias para *calcular* nuevas columnas en una consulta. Esto es similar a cómo podrías usar fórmulas en Excel.

## Función IIF

En SQLite, la función `IIF` funciona como un [ternario](https://book.pythontips.com/en/latest/ternary_operators.html). **Similar a la función =SI() que en su momento vimos trabajando con Hojas de Cálculo**. Por ejemplo,

```sql
IIF(carA > carB, 'Car a es más grande', 'Car b es más grande')
```

Si `a` es mayor que `b`, esta declaración evalúa la cadena `'Car a es más grande'`. De lo contrario, evalúa `'Car b es más grande'`.

Así es como podemos usar `IIF()` y un alias `directive` para agregar una nueva columna calculada a nuestro conjunto de resultados:

```sql
SELECT quantity,
  IIF(quantity < 10, 'Order more', 'In Stock') AS directive
  FROM products;
```

## Asignación

Necesitamos revisar los datos de transacciones de *CashPal* y determinar si alguna de las transacciones necesita ser auditada.

Devuelve todos los datos de la tabla `transactions` y agrega una columna extra al final llamada `audit`.

- Si el campo `was_successful` de una fila es `true`, el campo `audit` debe decir "No se requiere acción".
- Si el campo `was_successful` de una fila es `false`, el campo `audit` debe decir "Realizar una auditoría".

## Consejo

Algunos operadores de igualdad en SQL:

- `=`: Igual a
- `<`: Menor que
- `>`: Mayor que
