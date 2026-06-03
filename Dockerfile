FROM nousresearch/hermes-agent:latest

# Railway injects PORT at runtime; set default for build time
ARG PORT=8080
ENV TELEGRAM_WEBHOOK_PORT=${PORT}

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE ${PORT}
