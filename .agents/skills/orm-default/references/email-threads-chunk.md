# emailThreadsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailThreadsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.emailThreadsChunk.findMany({ select: { id: true } }).execute()
db.emailThreadsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailThreadsChunk.create({ data: { emailThreadsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.emailThreadsChunk.update({ where: { id: '<UUID>' }, data: { emailThreadsId: '<UUID>' }, select: { id: true } }).execute()
db.emailThreadsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailThreadsChunk records

```typescript
const items = await db.emailThreadsChunk.findMany({
  select: { id: true, emailThreadsId: true }
}).execute();
```

### Create a emailThreadsChunk

```typescript
const item = await db.emailThreadsChunk.create({
  data: { emailThreadsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
