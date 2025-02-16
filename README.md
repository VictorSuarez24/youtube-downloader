# **YouTube Downloader en Bash**

Este proyecto consiste en un script en **Bash** que permite descargar videos y audios de YouTube de forma sencilla utilizando la herramienta **`yt-dlp`**. Si **`yt-dlp`** no está instalado en tu sistema, el script se encargará de instalarlo automáticamente.

## **Características**

- **Descarga videos en MP4** de YouTube en la mejor calidad disponible.
- **Descarga solo el audio en MP3** de los videos.
- **Selección interactiva** para elegir entre video o audio.
- **Verificación de instalación** de **`yt-dlp`** y, si no está instalado, se instala automáticamente.
- **Carpeta personalizada de descargas**: Los videos y audios se guardan en una carpeta específica dentro de **`Descargas/YouTube`**.

## **Requisitos**

Antes de ejecutar el script, asegúrate de tener instalada la herramienta **`yt-dlp`** en tu sistema. Puedes instalarla ejecutando uno de los siguientes comandos:

- **Para sistemas basados en Debian/Ubuntu:**

  ```bash
  sudo apt update && sudo apt install yt-dlp -y
# Instalación y Uso del Script YouTube Downloader

## Instalación

1. **Descarga el archivo** `youtube_downloader.sh`.
2. **Dale permisos de ejecución**:
    ```bash
    chmod +x youtube_downloader.sh
    ```

3. **Ejecuta el script**:
    ```bash
    ./youtube_downloader.sh
    ```

## Uso

Al ejecutar el script, se te pedirá que ingreses la URL del video de YouTube y luego podrás elegir el formato de descarga:

- **Opción 1**: Descargar el video en formato **MP4**.
- **Opción 2**: Descargar solo el audio en formato **MP3**.

### Ejemplo de uso

```bash
🔗 Introduce la URL del video de YouTube: https://www.youtube.com/watch?v=dQw4w9WgXcQ
Elige el formato de descarga:
1) 📹 Video (MP4)
2) 🎵 Audio (MP3)
Opción: 1
## Funcionamiento de la Herramienta

El script realiza las siguientes acciones:

1. **Verifica si `yt-dlp`** está instalado en tu sistema. Si no lo está, lo instala automáticamente.
2. **Solicita la URL del video** que deseas descargar.
3. **Presenta un menú interactivo** para seleccionar el formato de descarga (video o audio).
4. **Crea la carpeta de descargas** YouTube en tu directorio **Descargas** si no existe.
5. Según la opción seleccionada, **descarga el video** en formato **MP4** o el **audio** en formato **MP3** y lo guarda en la carpeta de descargas especificada.
