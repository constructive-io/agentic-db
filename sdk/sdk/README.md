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

### CRUD

```typescript
// List contacts
const contacts = await db.contact.findMany({ first: 10 });

// Create a contact
const contact = await db.contact.create({
  input: { firstName: 'Alice', lastName: 'Smith', headline: 'Engineer' },
});

// Update
await db.contact.update({
  id: contact.id,
  patch: { headline: 'Senior Engineer' },
});

// Delete
await db.contact.delete({ id: contact.id });
```

### Vector Search

```typescript
// Semantic similarity search using pgvector
const results = await db.contact.findMany({
  condition: {
    vectorEmbedding: { distance_lt: 0.5, vector: queryEmbedding },
  },
});
```

### Unified Search

```typescript
// Combined vector + BM25 + FTS + trigram scoring
const results = await db.contact.findMany({
  condition: { searchScore: { score_gt: 0 } },
});
```

### Chunk Search

```typescript
// Search across contact chunks (long-document embeddings)
const results = await db.contactsChunk.findMany({
  condition: {
    vectorEmbedding: { distance_lt: 0.3, vector: queryEmbedding },
  },
});
```

### Relations

```typescript
// M:N junction: link a contact to a note
await db.contactNote.create({
  input: { contactId: contact.id, noteId: note.id },
});

// Query with nested relations
const contactsWithNotes = await db.contact.findMany({
  first: 10,
});
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
