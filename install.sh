#!/bin/bash
echo "🫐 Preparando OpenClaw para usar Google Gemini..."

# Parchear el código fuente para usar gemini-3-flash-preview por defecto
# Nota: Esto asume que el código fuente está disponible en el contexto de construcción
sed -i 's/claude-opus-4-6/gemini-3-flash-preview/g' src/agents/defaults.ts src/config/defaults.ts 2>/dev/null || true
sed -i 's/anthropic/google/g' src/agents/defaults.ts src/config/defaults.ts 2>/dev/null || true

echo "✅ Código parcheado con éxito."
echo "📝 Ahora debes configurar tu archivo .env y ejecutar: docker compose up -d"
