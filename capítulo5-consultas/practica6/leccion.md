# OR

Como probablemente hayas adivinado, si el operador lógico `AND` es compatible, el operador `OR` probablemente también lo sea.

```sql
SELECT product_name, quantity, shipment_status
FROM products
WHERE shipment_status = 'out of stock'
OR quantity BETWEEN 10 and 100;
```

Este query recupera registros donde se cumple la condición de `shipment_status` o la condición de `quantity`.

## Orden de Operaciones

Puedes agrupar operaciones lógicas con paréntesis para especificar el [orden de operaciones](https://www.mathsisfun.com/operation-order-pemdas.html).

```sql
(this AND that) OR the_other
```

## Asignación

¡Las leyes han cambiado de nuevo! Ahora necesitamos ver cuántos usuarios afectados cumplen con este criterio:

> Usuarios que son de Estados Unidos o Canadá, y tienen menos de 18 años.

Escribe un query que recupere el *conteo* de cada usuario (renombrado como `junior_count`) que cumpla con las condiciones anteriores.
