# 🫐 Berry - OpenClaw (Parche Automatizado para Gemini)

![Status](https://img.shields.io/badge/Status-Parche_Automatizado-orange)
![Engine](https://img.shields.io/badge/IA-Gemini_3_Flash-blue)
![Platform](https://img.shields.io/badge/Platform-Raspberry_Pi_5-red)

Este repositorio es un **parche automatizado** para instalar y configurar **OpenClaw** en local (optimizado para **Raspberry Pi 5**) utilizando **Google Gemini** como motor de IA.

## 🚀 ¿Cómo funciona?
En lugar de clonar todo el código fuente, este repositorio contiene un script que descarga la versión oficial de OpenClaw y la modifica automáticamente para que use Gemini 3 Flash por defecto, ahorrándote la configuración manual.

## 🛠️ Requisitos
- **Hardware:** Raspberry Pi 5 o superior.
- **Software:** Docker & Docker Compose.
- **Claves API:**
  - [Google AI Studio](https://aistudio.google.com/) (API Key).
  - Telegram Bot Token (vía [@BotFather](https://t.me/botfather)).

## 📦 Instalación Paso a Paso

1. **Clonar este repositorio:**
   ```bash
   git clone https://github.com/ceiman/Openclaw.git
   cd Openclaw
   ```

2. **Ejecutar el script de instalación:**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```
   *(Este script descargará automáticamente el código oficial de OpenClaw y lo modificará para Gemini).*

3. **Configurar el entorno:**
   Entra en la carpeta descargada, mueve los archivos de configuración y configura tus claves:
   ```bash
   cd openclaw
   cp ../docker-compose.yml .
   cp ../.env.example .env
   nano .env # Introduce aquí tus API Keys y Tokens
   ```

4. **Levantar el proyecto:**
   ```bash
   docker compose build --no-cache
   docker compose up -d
   ```

## 🤖 Conexión con Telegram (Pairing)
Cuando inicies el bot en Telegram (`/start`), recibirás un código. Para vincularlo, ejecuta en tu terminal:
```bash
docker exec -it openclaw-app npx openclaw pairing approve telegram <TU_CODIGO>
```

## ⚠️ Aviso de Rate Limit
Si ves el error **"API rate limit reached"**, es debido al límite de velocidad de la cuota gratuita de Google. 
- **Solución:** Esperar 5-10 minutos o usar una nueva API Key.

---
*Automatizado por Berry AI 🫐 para Carlos.*
