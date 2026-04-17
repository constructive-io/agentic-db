# @agentic-db/sdk

<p align="center" width="100%">
  <img height="120" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://www.npmjs.com/package/@agentic-db/sdk"><img height="20" src="https://img.shields.io/npm/v/@agentic-db/sdk"/></a>
</p>

Type-safe, Prisma-like ORM client for the `agentic-db` database. Generated from the live GraphQL schema using [`@constructive-io/graphql-codegen`](https://github.com/constructive-io/constructive).

## Install

```bash
npm install @agentic-db/sdk
```

## Usage

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: 'http://agentic.localhost:3000/graphql',
  headers: { Authorization: `Bearer ${token}` },
});
```

Every call returns a `QueryBuilder`. Call `.execute()` to get a `{ ok, data, errors }` discriminated union, or `.unwrap()` to throw on failure. A `select` object is always required and specifies which fields to return.

### CRUD

```typescript
// List contacts
const result = await db.contact
  .findMany({
    first: 10,
    select: { id: true, firstName: true, lastName: true },
  })
  .execute();

// Get one by id
const one = await db.contact
  .findOne({ id: contactId, select: { id: true, firstName: true } })
  .execute();

// Create a contact
const created = await db.contact
  .create({
    data: { firstName: 'Alice', lastName: 'Smith', headline: 'Engineer' },
    select: { id: true, firstName: true },
  })
  .execute();

// Update
await db.contact
  .update({
    where: { id: contactId },
    data: { headline: 'Senior Engineer' },
    select: { id: true, headline: true },
  })
  .execute();

// Delete
await db.contact
  .delete({ where: { id: contactId } })
  .execute();
```

### Vector Search

Semantic similarity search using pgvector. Pass the query embedding via the `vectorEmbedding` filter on `where`; select `searchScore` to get the blended relevance score.

```typescript
const results = await db.contact
  .findMany({
    where: {
      vectorEmbedding: {
        vector: queryEmbedding, // number[]
        metric: 'COSINE',       // 'COSINE' | 'L2' | 'INNER_PRODUCT'
        distance: 2.0,          // max distance threshold
      },
    },
    first: 10,
    select: { id: true, firstName: true, searchScore: true },
  })
  .execute();
```

### Unified Search

Composite search that dispatches across tsvector, BM25, and pg_trgm simultaneously. Rows matching any algorithm are returned, and `searchScore` is a blended 0..1 ranking.

```typescript
const results = await db.contact
  .findMany({
    where: { unifiedSearch: 'postgres vector engineer' },
    first: 10,
    select: { id: true, firstName: true, searchScore: true },
  })
  .execute();
```

Vector and text filters can be combined in the same `where`:

```typescript
const results = await db.contact
  .findMany({
    where: {
      vectorEmbedding: { vector: queryEmbedding, metric: 'COSINE', distance: 2.0 },
      unifiedSearch: 'postgres vector engineer',
    },
    first: 10,
    select: { id: true, firstName: true, searchScore: true },
  })
  .execute();
```

### Chunk Search

Search across contact chunks (long-document embeddings).

```typescript
const results = await db.contactsChunk
  .findMany({
    where: {
      vectorEmbedding: { vector: queryEmbedding, metric: 'COSINE', distance: 2.0 },
    },
    first: 10,
    select: { id: true, contactsId: true, content: true, searchScore: true },
  })
  .execute();
```

### Relations

```typescript
// M:N junction: link a contact to a note
await db.contactNote
  .create({
    data: { contactId: contact.id, noteId: note.id },
    select: { contactId: true, noteId: true },
  })
  .execute();

// Query with nested connection selections
const contactsWithNotes = await db.contact
  .findMany({
    first: 10,
    select: {
      id: true,
      firstName: true,
      notes: {
        select: { id: true, content: true },
      },
    },
  })
  .execute();
```

## Available Models

91 tables including: `contact`, `company`, `deal`, `event`, `venue`, `note`, `interaction`, `touchpoint`, `tag`, `agent`, `task`, `skill`, `goal`, `habit`, `memory`, `trip`, `place`, `project`, `expense`, `emailAccount`, `emailMessage`, `calendar`, `calendarEvent`, `conversation`, `message`, `toolCall`, `policy`, `auditLog`, `contactsChunk`, `notesChunk`, and all junction tables.

## Regenerating

The SDK is generated from the live database schema. To regenerate after schema changes:

```bash
# From the repo root (requires a running Constructive GraphQL server)
pnpm run generate:all
```

This exports the GraphQL schema and regenerates the ORM client and CLI.

## Credits

Built by the [Constructive](https://constructive.io) team. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
