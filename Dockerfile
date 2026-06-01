FROM nousresearch/hermes-agent:latest

# Railway injects PORT; map it to Hermes webhook listener
ENV TELEGRAM_WEBHOOK_PORT=${PORT:-8080}

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE ${PORT:-8080}
