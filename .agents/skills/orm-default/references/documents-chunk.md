# documentsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DocumentsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.documentsChunk.findMany({ select: { id: true } }).execute()
db.documentsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.documentsChunk.create({ data: { documentsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', contentBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.documentsChunk.update({ where: { id: '<UUID>' }, data: { documentsId: '<UUID>' }, select: { id: true } }).execute()
db.documentsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all documentsChunk records

```typescript
const items = await db.documentsChunk.findMany({
  select: { id: true, documentsId: true }
}).execute();
```

### Create a documentsChunk

```typescript
const item = await db.documentsChunk.create({
  data: { documentsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', contentBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
