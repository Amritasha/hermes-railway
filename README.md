# Hermes Agent — Railway Template

One-click deploy of [Hermes Agent](https://github.com/NousResearch/hermes-agent) by Nous Research on [Railway](https://railway.app).

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/YOUR_TEMPLATE_ID)

> Replace `YOUR_TEMPLATE_ID` with your Railway template ID after publishing.

---

## What you get

- Hermes Agent running in gateway mode (Telegram bot)
- Webhook auto-configured from Railway's public domain
- Persistent memory across conversations
- 200+ LLM models via OpenRouter

## Quick setup

### 1. Get a Telegram bot token

Message [@BotFather](https://t.me/BotFather) on Telegram → `/newbot` → copy the token.

### 2. Get your Telegram user ID

Message [@userinfobot](https://t.me/userinfobot) to get your numeric user ID.

### 3. Get an LLM API key

Sign up at [OpenRouter](https://openrouter.ai) (supports GPT-4, Claude, Gemini, Llama, and 200+ more).

### 4. Deploy

Click the button above and fill in these environment variables:

| Variable | Description | Required |
|---|---|---|
| `OPENROUTER_API_KEY` | OpenRouter API key | Yes (or another provider) |
| `TELEGRAM_BOT_TOKEN` | Token from @BotFather | Yes |
| `TELEGRAM_ALLOWED_USERS` | Your Telegram user ID(s), comma-separated | Yes |
| `TELEGRAM_HOME_CHANNEL` | Chat ID for scheduled/cron messages | Optional |
| `GITHUB_TOKEN` | GitHub PAT for code tools | Optional |
| `EXA_API_KEY` | AI web search | Optional |

Railway will automatically set `RAILWAY_PUBLIC_DOMAIN` and `PORT` — the start script wires these to Hermes's webhook config.

## Switching models

In your Telegram chat with the bot:

```
hermes model set openai/gpt-4o
hermes model set anthropic/claude-opus-4
hermes model set meta-llama/llama-3.3-70b-instruct
```

## Adding more integrations

Set any variables from [`.env.example`](.env.example) in Railway's Variables tab and redeploy.

## Upstream

This template is a thin Railway wrapper around [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent).  
For bugs and features, open issues there.
