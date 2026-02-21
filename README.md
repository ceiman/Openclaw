# 🫐 Berry - OpenClaw en Raspberry Pi 5

![Status](https://img.shields.io/badge/Status-Activo-brightgreen)
![Engine](https://img.shields.io/badge/IA-Gemini_3_Flash-blue)
![Platform](https://img.shields.io/badge/Platform-Raspberry_Pi_5-red)

Repositorio para desplegar **OpenClaw** (Berry 🫐) 100% en local usando una **Raspberry Pi 5**, con **Google Gemini** como motor de inteligencia y **Telegram** como interfaz de usuario.

## 🚀 Descripción
Berry es un "AI Familiar" diseñado para ser útil, relajado y ocasionalmente gracioso. Este proyecto optimiza OpenClaw para funcionar eficientemente en hardware ARM64.

## 🛠️ Requisitos Previos
- **Hardware:** Raspberry Pi 5 (recomendado) o 4.
- **Software:** Docker & Docker Compose.
- **Cuentas:** 
  - [Google AI Studio](https://aistudio.google.com/) (API Key gratuita).
  - Bot de Telegram (vía [@BotFather](https://t.me/botfather)).

## 📦 Instalación Paso a Paso

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/ceiman/Openclaw.git
   cd Openclaw
   ```

2. **Ejecutar el script de preparación:**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. **Configurar variables de entorno:**
   ```bash
   cp .env.example .env
   # Edita .env con tus claves reales
   nano .env
   ```

4. **Desplegar con Docker:**
   ```bash
   docker compose build --no-cache
   docker compose up -d
   ```

## 🤖 Conexión con Telegram (Pairing)
Al iniciar el bot por primera vez en Telegram enviándole `/start`, te proporcionará un código de vinculación. Para aprobarlo, ejecuta este comando en la terminal de tu Raspberry Pi:

```bash
docker exec -it openclaw-app npx openclaw pairing approve telegram <TU_CODIGO>
```

## ⚠️ Troubleshooting (Solución de problemas)

### Error: "API rate limit reached"
Este mensaje aparece cuando se supera la cuota gratuita de la API de Google Gemini. 
- **Solución:** Esperar unos minutos (normalmente 5-10) o generar una nueva API Key en Google AI Studio.

---
*Desarrollado con ❤️ por Carlos (Berry AI).*
