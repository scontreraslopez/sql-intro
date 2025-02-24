# Operador de Guion Bajo (_)

Como se discutió, el operador comodín `%` coincide con cero o más caracteres. Mientras tanto, el operador comodín `_` solo coincide con un *único* carácter.

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

## Tarea

¡El departamento de RRHH ha podido reducir aún más su consulta! Quieren un informe de todos los datos de usuarios cuyos nombres comiencen con `Al` *y tengan exactamente 5 caracteres de longitud*.

Para ello:

1. Ejecuta `bash tester.sh` para inicializar la DB.
2. Escribe la consulta, utilizando la función LIKE, que devuelva los usuarios que comienzan por **Al** y tienen 5 caracteres de longitud exactamente, utiliza para ello el operador `_`.
3. Toma una captura de pantalla con tu solución y el resultado de su ejecución. Añade la captura de pantalla a tu documento de texto bajo un nuevo epígrafe.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
