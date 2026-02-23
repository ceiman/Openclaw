#!/bin/bash
echo "🫐 Restaurando Berry AI..."
mkdir -p data config
if [ ! -f .env ]; then
    echo "⚠️ No se encuentra el archivo .env. Por favor, créalo usando .env.example"
    cp .env.example .env
fi
docker compose pull
docker compose up -d
echo "✅ ¡Berry ha vuelto a la vida!"
