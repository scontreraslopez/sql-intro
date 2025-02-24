# Operador de Guion Bajo

Como se discutió, el operador comodín <code>%</code> coincide con cero o más caracteres. Mientras tanto, el operador comodín <code>_</code> solo coincide con un <em>único</em> carácter.

```sql
SELECT * FROM products
WHERE product_name LIKE '_oot';
```

El código anterior coincide con productos como:

- boot
- root
- foot

```sql
SELECT * FROM products
WHERE product_name LIKE '__oot';
```

El código anterior coincide con productos como:

- shoot
- groot

## Asignación

¡El departamento de RRHH ha podido reducir aún más su consulta! Quieren un informe de todos los datos de usuarios cuyos nombres comiencen con <code>Al</code> <em>y tengan exactamente 5 caracteres de longitud</em>.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
