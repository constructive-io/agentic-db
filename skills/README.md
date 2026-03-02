# Agent-OS Skills

Skills documentation for the Agent-OS system. These markdown files provide agent-readable instructions for interacting with the Constructive-backed database.

## Structure

```
skills/
├── README.md              # This index
├── provision.md           # Database provisioning
├── embeddings.md          # Embedding generation via Ollama
├── rag-query.md           # RAG pipeline usage
├── crm/                   # CRM-related skills
│   ├── contacts.md
│   ├── companies.md
│   ├── deals.md
│   ├── events.md
│   ├── venues.md
│   └── tags.md
├── agent/                 # Agent-related skills
│   ├── tasks.md
│   ├── skills.md
│   ├── memories.md
│   └── rules.md
└── accounting/            # Accounting skills
    └── expenses.md
```

## Usage

These skills are designed to be:
1. **Human-readable** — developers can understand the API
2. **Agent-ingestible** — can be loaded into `agent.skills` table for AI-assisted development
3. **Executable** — code examples work with the generated SDK

## Workspace Reference

All scripts assume you're working in a pnpm workspace with:

```typescript
import { createClient } from '@agent-os/codegen/generated/agent-os-sdk/orm';
import { generateEmbedding } from '@agent-os/scripts/embeddings';
```

## Environment

- Constructive server at `api.localhost:3000` / `auth.localhost:3000`
- Ollama with `nomic-embed-text` model
- Provisioned agent-os database

---

*Part of the agent-os project*
