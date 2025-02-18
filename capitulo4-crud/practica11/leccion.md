# El Peligro de Eliminar Datos

Eliminar datos puede ser una operación peligrosa. ¡Una vez eliminados, los datos pueden ser realmente difíciles, si no imposibles, de restaurar! Hablemos de un par de formas comunes en que los ingenieros de back-end protegen contra la pérdida de datos valiosos de los clientes.

![Descripción del contenido: copias de seguridad de la base de datos](https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/gUNRY9t.png)
[Ver video](https://storage.googleapis.com/qvault-webapp-dynamic-assets/lesson_videos/database-backups.mp4)

<details open="">
<summary>
## Estrategia 1 - Copias de Seguridad
</summary>
Si estás utilizando un servicio en la nube como <a href="https://cloud.google.com/sql" target="_blank" rel="noopener nofollow">Cloud SQL</a> de GCP o <a href="https://aws.amazon.com/rds/" target="_blank" rel="noopener nofollow">RDS</a> de AWS, deberías <em>siempre</em> activar las copias de seguridad automáticas. Estas toman una instantánea automática de toda tu base de datos en algún intervalo y la mantienen durante algún tiempo.

Por ejemplo, la base de datos de Boot.dev tiene una instantánea de respaldo tomada diariamente y retenemos esos respaldos durante 30 días. Si alguna vez ejecuto accidentalmente una consulta que elimina datos valiosos, puedo restaurarlos desde la copia de seguridad.

**Deberías tener una estrategia de copias de seguridad para bases de datos de producción.**
</details>

<details open="">
<summary>
## Estrategia 2 - Eliminaciones Suaves
</summary>
Una "eliminación suave" es cuando no <em>realmente</em> eliminas datos de tu base de datos, sino que simplemente "marcas" los datos como eliminados. Por ejemplo, podrías establecer una fecha de <code>deleted_at</code> en la fila que deseas eliminar. Luego, en tus consultas ignoras cualquier cosa que tenga una fecha de <code>deleted_at</code> establecida. La idea es que esto permite que tu aplicación se comporte como si estuviera eliminando datos, pero siempre puedes volver y restaurar cualquier dato que haya sido eliminado.

Probablemente solo deberías usar eliminaciones suaves si tienes una razón específica para hacerlo. Las copias de seguridad automáticas deberían ser "suficientemente buenas" para la mayoría de las aplicaciones que solo están interesadas en protegerse contra errores de los desarrolladores.
</details>

**Pregunta:** Deberías ____ tener copias de seguridad automáticas de una base de datos de producción

- A veces
- Nunca
- Casi nunca
- Casi siempre

**Pregunta:** Una eliminación suave es cuando ____

- Marcas una fila como eliminada en lugar de eliminar realmente los datos.
- Eliminas algunos datos, pero no se eliminan realmente de la base de datos durante 30 días.
- Eliminas algunos datos pidiéndole a tu base de datos con una voz suave. Usualmente con 'por favor'.
- Eliminas datos de una instantánea.
