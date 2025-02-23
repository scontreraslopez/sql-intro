# El Peligro de Eliminar Datos

Eliminar datos puede ser una operación peligrosa. ¡Una vez eliminados, los datos pueden ser realmente difíciles, si no imposibles, de restaurar! Hablemos de un par de formas comunes en que los ingenieros de back-end protegen contra la pérdida de datos valiosos de los clientes.

[Ver video](https://storage.googleapis.com/qvault-webapp-dynamic-assets/lesson_videos/database-backups.mp4)
[Descarga los subtítulos en español](/assets/subtitles/database-backup.srt)

## Estrategia 1 - Copias de Seguridad

Si estás utilizando un servicio en la nube como [Cloud SQL](https://cloud.google.com/sql) de GCP o [RDS](https://aws.amazon.com/rds/) de AWS, deberías *siempre* activar las copias de seguridad automáticas. Estas toman una instantánea automática de toda tu base de datos en algún intervalo y la mantienen durante algún tiempo.

Por ejemplo, la base de datos de Boot.dev tiene una instantánea de respaldo tomada diariamente y retenemos esos respaldos durante 30 días. Si alguna vez ejecuto accidentalmente una consulta que elimina datos valiosos, puedo restaurarlos desde la copia de seguridad.

**Deberías tener una estrategia de copias de seguridad para bases de datos de producción.**

## Estrategia 2 - Eliminaciones Suaves

Una "eliminación suave" es cuando no *realmente* eliminas datos de tu base de datos, sino que simplemente "marcas" los datos como eliminados. Por ejemplo, podrías establecer una fecha de `deleted_at` en la fila que deseas eliminar. Luego, en tus consultas ignoras cualquier cosa que tenga una fecha de `deleted_at` establecida. La idea es que esto permite que tu aplicación se comporte como si estuviera eliminando datos, pero siempre puedes volver y restaurar cualquier dato que haya sido eliminado.

Probablemente solo deberías usar eliminaciones suaves si tienes una razón específica para hacerlo. Las copias de seguridad automáticas deberían ser "suficientemente buenas" para la mayoría de las aplicaciones que solo están interesadas en protegerse contra errores de los desarrolladores.

## Tarea

Responde a las siguientes cuestiones tipo test. Añade estas preguntas y sus respuestas en un nuevo epígrafe de tu documento de texto de las prácticas.

## Preguntas

- Deberías ____ tener copias de seguridad automáticas de una base de datos de producción
  - a) A veces
  - b) Nunca
  - c) Casi nunca
  - d) Casi siempre

- Una eliminación suave es cuando ____
  - a) Marcas una fila como eliminada en lugar de eliminar realmente los datos.
  - b) Eliminas algunos datos, pero no se eliminan realmente de la base de datos durante 30 días.
  - c) Eliminas algunos datos pidiéndole a tu base de datos con una voz suave. Usualmente con 'por favor'.
  - d) Eliminas datos de una instantánea.

## Créditos

Material adaptado del curso "Learn SQL" de boot.dev
