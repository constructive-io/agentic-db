# dealsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.dealsChunk.findMany({ select: { id: true } }).execute()
db.dealsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.dealsChunk.create({ data: { dealsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.dealsChunk.update({ where: { id: '<UUID>' }, data: { dealsId: '<UUID>' }, select: { id: true } }).execute()
db.dealsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all dealsChunk records

```typescript
const items = await db.dealsChunk.findMany({
  select: { id: true, dealsId: true }
}).execute();
```

### Create a dealsChunk

```typescript
const item = await db.dealsChunk.create({
  data: { dealsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
