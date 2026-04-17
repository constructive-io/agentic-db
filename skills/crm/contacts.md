---
name: crm-contacts
description: CRUD, vector + hybrid search, and M:N relationships on the CRM `contacts` table via the generated ORM.
---

# CRM Contacts

Represents a person in the agent's world. Embedding columns are maintained
automatically by the Postgres trigger → `@agentic-db/worker` pipeline — you
only need to provide `embeddingText` (or pass a raw `embedding` if you're
computing it locally).

## Imports

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: process.env.AGENTIC_DB_GRAPHQL_URL!,
  headers: { Authorization: `Bearer ${process.env.AGENTIC_DB_TOKEN!}` },
});
```

## Available fields

The canonical set of columns mirrors the fluent CLI schema and the GraphQL
`Contact` type. Common ones:

| Field | Type | Notes |
|-------|------|-------|
| `firstName` | string | required on create |
| `lastName` | string | |
| `email`, `phone` | string | |
| `headline`, `bio` | string | feeds the embedder by default |
| `location`, `locationGeo` | string, PostGIS Point | for spatial search |
| `birthday`, `relationshipTypes`, `howWeMet`, `tags` | strings / string[] | |
| `embeddingText`, `embedding` | string, number[768] | auto-populated by worker |

There is **no** `entityId` column on contacts — auth scoping is handled by
the Constructive metaschema at the session level, not a per-row FK.

## Create a contact

```typescript
const created = await db.contact
  .create({
    data: {
      firstName: 'Alice',
      lastName: 'Smith',
      email: 'alice@example.com',
      headline: 'Staff Engineer',
      bio: 'Distributed systems and pgvector enthusiast.',
      tags: ['prospect', 'engineering'],
      embeddingText:
        'Alice Smith — Staff Engineer, distributed systems and pgvector',
    },
    select: { id: true, firstName: true, lastName: true },
  })
  .execute();
```

## Read / list / filter

```typescript
// By id
const one = await db.contact
  .findFirst({
    where: { id: { equalTo: contactId } },
    select: { id: true, firstName: true, lastName: true, headline: true },
  })
  .execute();

// Filter by email
const list = await db.contact
  .findMany({
    where: { email: { likeInsensitive: '%@example.com' } },
    orderBy: ['CREATED_AT_DESC'],
    first: 20,
    select: { id: true, firstName: true, email: true },
  })
  .execute();
```

## Vector + hybrid search

```typescript
async function searchContacts(query: string, limit = 10) {
  const embedding = await generateEmbedding(query); // 768-dim
  return db.contact
    .findMany({
      where: {
        or: [
          {
            vectorEmbedding: {
              vector: embedding,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          { fullTextSearch: query },
        ],
      },
      first: limit,
      select: {
        id: true,
        firstName: true,
        lastName: true,
        headline: true,
        searchScore: true,
      },
    })
    .execute();
}
```

## Update a contact

```typescript
await db.contact
  .update({
    id: contactId,
    data: {
      headline: 'Principal Engineer',
      embeddingText:
        'Alice Smith — Principal Engineer, distributed systems and pgvector',
      embeddingStale: true, // tells the worker to re-embed
    },
    select: { id: true, headline: true },
  })
  .execute();
```

## Related tables (what actually exists)

- `contactEmails`, `contactPhones`, `contactAddresses` — normalized children
- `contactNotes` — M:N to `notes`
- `contactCompanies` — M:N to `companies`
- `contactEvents` — M:N to `events`
- `contactMemories` — M:N to `memories`
- `contactImages`, `contactsChunks`, `contactRelationships`, `contactLinks`

## Tested contracts

See `describe('Contact CRUD via ORM')` and `describe('M:N relations')` in
[`packages/integration-tests/__tests__/orm.test.ts`](../../packages/integration-tests/__tests__/orm.test.ts),
and the live RAG pipeline in
[`packages/integration-tests/__tests__/rag.test.ts`](../../packages/integration-tests/__tests__/rag.test.ts).
