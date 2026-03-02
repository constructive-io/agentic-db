---
name: provision-agent-os
description: Provision a new agent-os database on the Constructive platform with all required schemas and tables
---

# Provision Agent-OS Database

Provisions a fully org-scoped Agent-OS database using the Constructive SDK.

## Prerequisites

- Constructive server running at `localhost:3000`
- `@constructive-io/node` installed

## Usage

```typescript
import { createClient } from '@constructive-io/node';

const client = createClient({
  endpoint: 'http://api.localhost:3000/graphql',
});

// 1. Sign up
const { accessToken, userId } = await client.mutation.signUp({
  input: { email: 'admin@example.com', password: 'SecurePass123!' }
}).unwrap();

// 2. Provision database
const db = createClient({
  endpoint: 'http://api.localhost:3000/graphql',
  headers: { Authorization: `Bearer ${accessToken}` },
});

const result = await db.databaseProvisionModule.create({
  data: {
    databaseName: 'agent-os-production',
    ownerId: userId,
    subdomain: 'agent-os-production',
    domain: 'localhost',
    modules: ['all'],
    bootstrapUser: true,
    options: {},
  },
  select: { id: true, databaseId: true, status: true },
}).unwrap();
```

## Schemas to Provision

After the base database is created, provision these application schemas:

1. **crm** — contacts, companies, deals, events, venues, tags
2. **agent** — tasks, skills, memories, rules, sessions
3. **accounting** — expenses
4. **calendar** — events, sync_state
5. **email** — messages
6. **kb** — documents

## Table Pattern

Most tables use:
- `DataEntityMembership` — includes `entity_id` for org scoping
- `AuthzEntityMembership` — RLS policy scoped to org membership
- `DataTimestamps` — `created_at`, `updated_at`
- `vector(768)` — embedding column for RAG-enabled tables

## See Also

- `skills/crm/contacts.md` — Contact table structure
- `skills/agent/tasks.md` — Task table structure
