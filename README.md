# Job1 - Discord Bot 🤖

**PT-BR** | [EN](#english)

Bot de moderação e engajamento para o servidor **TeamCodes**, desenvolvido em Ruby com a gem `discordrb`.

## Funcionalidades

- 👋 Boas vindas automáticas para novos membros
- ⚠️ Sistema de warn com kick automático no 3º aviso
- 🔨 Comando de kick com verificação de permissão
- 🔨 Comando de ban com verificação de permissão
- ⭐ Sistema de levels e XP automático por mensagens

## Comandos

| Comando | Descrição | Permissão |
|---|---|---|
| `!kick @user` | Expulsa um membro | kick_members |
| `!ban @user` | Bane um membro | ban_members |
| `!warn @user` | Avisa um membro (3 warns = kick) | kick_members |

## Como configurar

1. Clone o repositório
2. Instale as dependências: `gem install discordrb dotenv`
3. Crie um `.env` baseado no `.env.example`
4. Rode: `ruby bot.rb`

---

## English <a name="english"></a>

Moderation and engagement bot for the **TeamCodes** server, built with Ruby and `discordrb`.

## Features

- 👋 Automatic welcome messages for new members
- ⚠️ Warn system with auto-kick on 3rd warning
- 🔨 Kick command with permission check
- 🔨 Ban command with permission check
- ⭐ Automatic XP and level system

## Commands

| Command | Description | Permission |
|---|---|---|
| `!kick @user` | Kicks a member | kick_members |
| `!ban @user` | Bans a member | ban_members |
| `!warn @user` | Warns a member (3 warns = kick) | kick_members |

## Setup

1. Clone the repository
2. Install dependencies: `gem install discordrb dotenv`
3. Create a `.env` based on `.env.example`
4. Run: `ruby bot.rb`
