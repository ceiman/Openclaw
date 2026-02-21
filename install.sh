#!/bin/bash
echo "🚀 Clonando el repositorio oficial de OpenClaw..."
git clone https://github.com/openclaw/openclaw.git

echo "📂 Entrando en la carpeta de OpenClaw..."
cd openclaw || exit

echo "🧠 Parcheando el código fuente para inyectar Google Gemini..."
# Aplicamos los reemplazos para forzar el uso de Gemini 3 Flash y el proveedor Google
sed -i 's/claude-opus-4-6/gemini-3-flash-preview/g' src/agents/defaults.ts src/config/defaults.ts 2>/dev/null || true
sed -i 's/anthropic/google/g' src/agents/defaults.ts src/config/defaults.ts 2>/dev/null || true

echo "✅ ¡Código parcheado con éxito!"
echo "📝 Próximos pasos:"
echo "1. Copia tu archivo 'docker-compose.yml' dentro de la carpeta 'openclaw'."
echo "2. Crea tu archivo '.env' basado en '.env.example' con tus claves API."
echo "3. Levanta el proyecto con: docker compose up -d --build"
