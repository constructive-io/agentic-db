# eventsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.eventsChunk.findMany({ select: { id: true } }).execute()
db.eventsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventsChunk.create({ data: { eventsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.eventsChunk.update({ where: { id: '<UUID>' }, data: { eventsId: '<UUID>' }, select: { id: true } }).execute()
db.eventsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventsChunk records

```typescript
const items = await db.eventsChunk.findMany({
  select: { id: true, eventsId: true }
}).execute();
```

### Create a eventsChunk

```typescript
const item = await db.eventsChunk.create({
  data: { eventsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
