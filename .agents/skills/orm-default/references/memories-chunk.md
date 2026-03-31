# memoriesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for MemoriesChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.memoriesChunk.findMany({ select: { id: true } }).execute()
db.memoriesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.memoriesChunk.create({ data: { memoriesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.memoriesChunk.update({ where: { id: '<UUID>' }, data: { memoriesId: '<UUID>' }, select: { id: true } }).execute()
db.memoriesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all memoriesChunk records

```typescript
const items = await db.memoriesChunk.findMany({
  select: { id: true, memoriesId: true }
}).execute();
```

### Create a memoriesChunk

```typescript
const item = await db.memoriesChunk.create({
  data: { memoriesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
