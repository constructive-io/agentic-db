# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Note records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.note.findMany({ select: { id: true } }).execute()
db.note.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.note.create({ data: { content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.note.update({ where: { id: '<UUID>' }, data: { content: '<String>' }, select: { id: true } }).execute()
db.note.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all note records

```typescript
const items = await db.note.findMany({
  select: { id: true, content: true }
}).execute();
```

### Create a note

```typescript
const item = await db.note.create({
  data: { content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
