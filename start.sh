#!/bin/sh
# Auto-configure Telegram webhook URL from Railway's public domain, then start the gateway.
set -e

if [ -n "$RAILWAY_PUBLIC_DOMAIN" ] && [ -z "$TELEGRAM_WEBHOOK_URL" ]; then
  export TELEGRAM_WEBHOOK_URL="https://$RAILWAY_PUBLIC_DOMAIN"
fi

exec hermes gateway
