# touchpointsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TouchpointsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.touchpointsChunk.findMany({ select: { id: true } }).execute()
db.touchpointsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.touchpointsChunk.create({ data: { touchpointsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.touchpointsChunk.update({ where: { id: '<UUID>' }, data: { touchpointsId: '<UUID>' }, select: { id: true } }).execute()
db.touchpointsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all touchpointsChunk records

```typescript
const items = await db.touchpointsChunk.findMany({
  select: { id: true, touchpointsId: true }
}).execute();
```

### Create a touchpointsChunk

```typescript
const item = await db.touchpointsChunk.create({
  data: { touchpointsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
