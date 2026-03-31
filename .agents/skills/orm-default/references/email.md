# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Email records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.email.findMany({ select: { id: true } }).execute()
db.email.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.email.create({ data: { entityId: '<UUID>', providerMessageId: '<String>', fromContactId: '<UUID>', to: '<JSON>', cc: '<JSON>', bcc: '<JSON>', subject: '<String>', bodyText: '<String>', bodyHtml: '<String>', sentAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', emailThreadId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerMessageIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', bodyHtmlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.email.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.email.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all email records

```typescript
const items = await db.email.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a email

```typescript
const item = await db.email.create({
  data: { entityId: '<UUID>', providerMessageId: '<String>', fromContactId: '<UUID>', to: '<JSON>', cc: '<JSON>', bcc: '<JSON>', subject: '<String>', bodyText: '<String>', bodyHtml: '<String>', sentAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', emailThreadId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerMessageIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', bodyHtmlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
