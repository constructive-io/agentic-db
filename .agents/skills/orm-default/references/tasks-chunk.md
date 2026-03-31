# tasksChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TasksChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.tasksChunk.findMany({ select: { id: true } }).execute()
db.tasksChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tasksChunk.create({ data: { tasksId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.tasksChunk.update({ where: { id: '<UUID>' }, data: { tasksId: '<UUID>' }, select: { id: true } }).execute()
db.tasksChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tasksChunk records

```typescript
const items = await db.tasksChunk.findMany({
  select: { id: true, tasksId: true }
}).execute();
```

### Create a tasksChunk

```typescript
const item = await db.tasksChunk.create({
  data: { tasksId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
