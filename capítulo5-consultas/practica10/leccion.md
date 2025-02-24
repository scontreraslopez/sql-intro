# Cuestionario de comodines

## Tarea

Comprueba tu comprensión de los comodines en SQL con las siguientes preguntas tipo test. Añade las respuestas correctas en tu documento de texto.

¡Felicidades! Con esta práctica has completado el capítulo de consultas. Ya puedes entregar el documento de texto a través de la plataforma Aules.

## Ejemplo 1

```sql
SELECT * from users
WHERE name LIKE 'or_%';
```

- ¿Qué valores coinciden con el ejemplo 1?**
  - Valores que comienzan con 'or' y tienen exactamente 3 caracteres.
- Valores que comienzan con 'or' y tienen al menos 3 caracteres de longitud.
- Valores que terminan con 'or' y tienen al menos 3 caracteres de longitud.
- Valores que terminan en 'or' y tienen exactamente 3 caracteres.

## Ejemplo 2

```sql
SELECT * from users
WHERE name LIKE '__ing';
```

**¿Cuál NO coincidiría con el ejemplo 2?**

- thing
- sling
- singing
- bling

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
