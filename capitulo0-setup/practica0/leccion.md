# Lección 0 -  Preparando el entorno de trabajo

## Cuestiones a instalar en la VM

- sqlite3
- sqlitebrowser

## Otras cuestiones a modificar en la VM lubuntu

- Ampliar en disco duro de la VM de 12GB a 15GB. Convenientemente explicado [aquí](https://itsfoss.com/increase-disk-size-virtualbox/)

## Flujo de trabajo habitual

### Setup

```bash
cd Desktop
mkdir dev
cd dev
git clone https://github.com/sergiocontreraslopez/sql-intro.git
cd sql-intro
```

### Rutina

1. Encender la VM
2. Abrir la terminal
3. `cd Desktop/dev/sql-intro`
4. `git pull`
5. hacer cd al capítulo que estemos trabajando y la práctica en cuestión p.ej. `cd capitulo1-introduccion/practica3`
6. `bash tester.sh`
7. Abrir la lección en el navegador del equipo anfitrión (no la VM ya que va más lenta).
8. Abrir la base de datos con `sqlitebrowser` y hacer las consultas en la terminal de la VM.
9. Resolver la tarea, tomar captura de pantalla y añadirla al documento de texto.

## Subtítulos de los videos

- Generados con TurboScribe en formato .srt a partir del vídeo y traducidos posteriormente con Google Translate o OpenAI Playground.
