# contactsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `search`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.contactsChunk.findMany({ select: { id: true } }).execute()
db.contactsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactsChunk.create({ data: { contactsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', search: '<FullText>', searchTsvRank: '<Float>', contentBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.contactsChunk.update({ where: { id: '<UUID>' }, data: { contactsId: '<UUID>' }, select: { id: true } }).execute()
db.contactsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactsChunk records

```typescript
const items = await db.contactsChunk.findMany({
  select: { id: true, contactsId: true }
}).execute();
```

### Create a contactsChunk

```typescript
const item = await db.contactsChunk.create({
  data: { contactsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', search: '<FullText>', searchTsvRank: '<Float>', contentBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
