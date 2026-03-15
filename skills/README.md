# Agent-OS Skills

Skills documentation for the Agent-OS system. These markdown files provide agent-readable instructions for interacting with the Constructive-backed database.

## ⚠️ Read First

**Before any development, read `RULES.md`** — mandatory development standards.

## Structure

```
skills/
├── README.md              # This index
├── RULES.md               # ⚠️ MANDATORY DEVELOPMENT RULES
├── provision.md           # Database provisioning via SDK
├── codegen.md             # SDK generation with @constructive-io/graphql-codegen
├── safegres.md            # Security patterns (Authz* policies)
├── embeddings.md          # Embedding generation via Ollama
├── rag-query.md           # RAG pipeline usage
├── crm/                   # CRM-related skills
│   ├── contacts.md
│   ├── companies.md
│   ├── events.md
│   └── venues.md
├── agent/                 # Agent-related skills
│   ├── tasks.md
│   └── memories.md
└── accounting/            # Accounting skills
    └── expenses.md
```

## Key Principles

1. **No raw SQL** — Use GraphQL via SDK only
2. **No hardcoded secrets** — Use `.env` files
3. **Workspace dependencies** — Use `workspace:*` syntax
4. **Makage builds** — Use `dist/` folder publishing
5. **TypeScript only** — No JavaScript

## SDK Usage

| Context | SDK |
|---------|-----|
| Platform ops (provision) | `@constructive-io/node` |
| Per-database CRUD | Generated SDK from codegen |
| Browser | `@constructive-io/sdk` |

## Workflow

1. **Provision** — Create database via `@constructive-io/node`
2. **Codegen** — Generate SDK with `@constructive-io/graphql-codegen`
3. **Develop** — Use generated SDK for all CRUD
4. **Build** — Use `makage build` for packages

## Environment

Required `.env`:
```bash
API_ENDPOINT=http://api.localhost:3000/graphql
AUTH_ENDPOINT=http://auth.localhost:3000/graphql
DATABASE_NAME=agentic-db
```

See `.env.example` in workspace root.

---

*Part of the agentic-db project*
