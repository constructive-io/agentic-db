# hikingTrailsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HikingTrailsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.hikingTrailsChunk.findMany({ select: { id: true } }).execute()
db.hikingTrailsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.hikingTrailsChunk.create({ data: { hikingTrailsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.hikingTrailsChunk.update({ where: { id: '<UUID>' }, data: { hikingTrailsId: '<UUID>' }, select: { id: true } }).execute()
db.hikingTrailsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all hikingTrailsChunk records

```typescript
const items = await db.hikingTrailsChunk.findMany({
  select: { id: true, hikingTrailsId: true }
}).execute();
```

### Create a hikingTrailsChunk

```typescript
const item = await db.hikingTrailsChunk.create({
  data: { hikingTrailsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
