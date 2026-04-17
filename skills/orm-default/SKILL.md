---
name: orm-default
description: ORM client for the default API — typed CRUD, vector + hybrid search, and relation walking for the 91 generated tables.
---

# orm-default

<!-- @constructive-io/graphql-codegen - keep the shape of this file in sync with generated models -->

`@agentic-db/sdk` exports a `createClient` factory that returns a Prisma-like
ORM with one model per generated table. Every call returns a `QueryBuilder`
— call `.execute()` to get a `{ ok, data, errors }` discriminated union or
`.unwrap()` to throw on failure. A `select` object is always required.

The authoritative model list lives in
[`sdk/sdk/src/generated/orm/models/`](../../sdk/sdk/src/generated/orm/models/)
and is re-exported from `createClient(...)`. Categories:

- **CRM**: `contact`, `company`, `deal`, `event`, `venue`, `tag`, `trip`,
  `place`, `note`, `touchpoint`, `interaction`, plus their junctions
  (`contactCompany`, `contactEvent`, `contactNote`, `companyMemory`,
  `dealContact`, `eventVenue`, `taskContact`, …)
- **Agent runtime**: `agent`, `agentPrompt`, `agentLog`, `agentCollaborator`,
  `skill`, `skillTool`, `toolDefinition`, `toolExecution`, `rule`,
  `autonomyRecord`, `autonomyRecordLink`, `runtimeState`,
  `runtimeStateDependency`, `runtimeSchedule`, `runtimeLog`, `runtimeMetric`,
  `runtimeEvent`, `runtimeConfig`, `runtimeArtifact`
- **Life-OS**: `memory`, `conversation`, `message`, `threadParticipant`,
  `project`, `goal`, `habit`, `expense`, `task`, `calendar`, `calendarEvent`
- **Email / sync**: `email`, `emailThread`, `emailAttachment`, `emailNote`,
  `emailRecipient`, `rawContact`, `rawContactEmail`, `rawContactPhone`,
  `rawContactUrl`, `providerSyncState`
- **Chunking / media**: `contactsChunk`, `notesChunk`, `image`,
  `contactImage`, `companyImage`, `eventImage`, `venueImage`
- **Ops**: `activityLog`, `contactLink`, `companyLink`, `eventLink`,
  `venueLink`

## Usage

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: process.env.AGENTIC_DB_GRAPHQL_URL!, // http://agentic.localhost:3000/graphql
  headers: { Authorization: `Bearer ${process.env.AGENTIC_DB_TOKEN!}` },
});

// Read
await db.contact
  .findMany({
    first: 10,
    select: { id: true, firstName: true, lastName: true },
  })
  .execute();

await db.contact
  .findOne({ id: contactId, select: { id: true, firstName: true } })
  .execute();

await db.contact
  .findFirst({
    where: { email: { equalTo: 'alice@example.com' } },
    select: { id: true, firstName: true },
  })
  .execute();

// Create
const { data } = await db.contact
  .create({
    data: { firstName: 'Alice', lastName: 'Smith', headline: 'Engineer' },
    select: { id: true, firstName: true },
  })
  .execute();

// Update (pass `id` at top level — ORM accepts `{ id, data, select }`)
await db.contact
  .update({
    id: contactId,
    data: { headline: 'Staff Engineer' },
    select: { id: true, headline: true },
  })
  .execute();

// Delete (takes `where: { id }`)
await db.contact.delete({ where: { id: contactId } }).execute();
```

## Vector + hybrid search

Every embedding-backed table exposes `where.vectorEmbedding` and
`where.fullTextSearch`. Combine them with `or` for a hybrid query:

```typescript
const hits = await db.memory
  .findMany({
    where: {
      or: [
        {
          vectorEmbedding: {
            vector: queryEmbedding, // number[768]
            metric: 'COSINE',       // 'COSINE' | 'L2' | 'INNER_PRODUCT'
            distance: 2.0,
          },
        },
        { fullTextSearch: 'postgres distributed systems' },
      ],
    },
    first: 10,
    select: { id: true, title: true, searchScore: true },
  })
  .execute();
```

## M:N relations

Junction tables have composite PKs (e.g. `{ contactId, companyId }`). Use
their model to link / unlink, and walk the relation through the parent:

```typescript
// Link
await db.contactCompany
  .create({
    data: { contactId: contact.id, companyId: company.id },
    select: { contactId: true, companyId: true },
  })
  .execute();

// Walk
const withCompanies = await db.contact
  .findOne({
    id: contact.id,
    select: {
      id: true,
      firstName: true,
      companies: { select: { id: true, name: true } },
    },
  })
  .execute();
```

## Known-good contracts

The integration test suite in
[`packages/integration-tests/__tests__/orm.test.ts`](../../packages/integration-tests/__tests__/orm.test.ts)
pins every pattern above against a real Postgres with `pgvector`, `pg_trgm`,
and the metaschema loaded — plus CRUD coverage for `memory`, `conversation`,
`message`, `skill`, `toolDefinition`, `rule`, `project`, `expense`, `goal`,
`habit`, `autonomyRecord`, and `toolExecution`. Use it as the reference when
the docs and the generated client disagree.
