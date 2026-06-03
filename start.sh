#!/bin/sh
# Auto-configure Hermes for Railway deployment, then start the gateway.
set -e

# Set webhook URL from Railway's public domain
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
  export TELEGRAM_WEBHOOK_URL="https://$RAILWAY_PUBLIC_DOMAIN/telegram"
fi

# Set default model if provided via env var
if [ -n "$LLM_MODEL" ]; then
  hermes config set model "$LLM_MODEL" 2>/dev/null || true
fi

# Start web admin portal in background if port is configured
if [ -n "$HERMES_WEB_PORT" ]; then
  hermes portal --port "$HERMES_WEB_PORT" &
fi

exec hermes gateway
