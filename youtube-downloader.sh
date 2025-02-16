#!/bin/bash

# Verificar si yt-dlp está instalado
if ! command -v yt-dlp &> /dev/null
then
    echo "❌ yt-dlp no está instalado. Instalándolo ahora..."
    sudo apt update && sudo apt install yt-dlp -y
fi

# Pedir la URL del video
read -p "🔗 Introduce la URL del video de YouTube: " video_url

# Menú de selección
echo "Elige el formato de descarga:"
echo "1) 📹 Video (MP4)"
echo "2) 🎵 Audio (MP3)"
read -p "Opción: " opcion

# Carpeta de descargas
download_dir="$HOME/Descargas/YouTube"
mkdir -p "$download_dir"

# Descargar según la opción elegida
if [ "$opcion" == "1" ]; then
    echo "📥 Descargando video en MP4..."
    yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]" "$video_url" \
        -o "$download_dir/%(title)s.%(ext)s" --progress
    echo "✅ Video descargado en $download_dir"

elif [ "$opcion" == "2" ]; then
    echo "📥 Descargando audio en MP3..."
    yt-dlp -x --audio-format mp3 "$video_url" \
        -o "$download_dir/%(title)s.%(ext)s" --progress
    echo "✅ Audio descargado en $download_dir"

else
    echo "❌ Opción no válida."
fi
