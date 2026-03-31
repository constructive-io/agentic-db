# emailThread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailThread records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.emailThread.findMany({ select: { id: true } }).execute()
db.emailThread.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailThread.create({ data: { entityId: '<UUID>', providerThreadId: '<String>', subject: '<String>', lastMessageAt: '<Datetime>', summary: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerThreadIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.emailThread.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.emailThread.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailThread records

```typescript
const items = await db.emailThread.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a emailThread

```typescript
const item = await db.emailThread.create({
  data: { entityId: '<UUID>', providerThreadId: '<String>', subject: '<String>', lastMessageAt: '<Datetime>', summary: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerThreadIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
