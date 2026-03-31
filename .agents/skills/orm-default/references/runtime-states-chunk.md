# runtimeStatesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeStatesChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.runtimeStatesChunk.findMany({ select: { id: true } }).execute()
db.runtimeStatesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeStatesChunk.create({ data: { runtimeStatesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeStatesChunk.update({ where: { id: '<UUID>' }, data: { runtimeStatesId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeStatesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeStatesChunk records

```typescript
const items = await db.runtimeStatesChunk.findMany({
  select: { id: true, runtimeStatesId: true }
}).execute();
```

### Create a runtimeStatesChunk

```typescript
const item = await db.runtimeStatesChunk.create({
  data: { runtimeStatesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
