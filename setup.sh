#!/bin/bash

echo "🫐 Iniciando instalación de Berry en Raspberry Pi 5..."

# 1. Actualizar sistema
sudo apt update && sudo apt upgrade -y

# 2. Instalar Docker si no existe
if ! [ -x "$(command -v docker)" ]; then
  echo "🐳 Instalando Docker..."
  curl -sSL https://get.docker.com | sh
  sudo usermod -aG docker $USER
  echo "⚠️ Por favor, cierra sesión y vuelve a entrar para que los cambios de Docker surtan efecto."
fi

# 3. Crear carpetas necesarias
mkdir -p data config

# 4. Crear archivo .env si no existe
if [ ! -f .env ]; then
  cp .env.example .env
  echo "📝 Se ha creado el archivo .env. Por favor, edítalo con tus claves API."
fi

# 5. Levantar el contenedor
echo "🚀 Levantando a Berry..."
docker compose up -d --build

echo "✅ ¡Instalación completada! Berry debería estar despertando en Telegram."
