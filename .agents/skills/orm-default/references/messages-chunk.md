# messagesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for MessagesChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.messagesChunk.findMany({ select: { id: true } }).execute()
db.messagesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.messagesChunk.create({ data: { messagesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.messagesChunk.update({ where: { id: '<UUID>' }, data: { messagesId: '<UUID>' }, select: { id: true } }).execute()
db.messagesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all messagesChunk records

```typescript
const items = await db.messagesChunk.findMany({
  select: { id: true, messagesId: true }
}).execute();
```

### Create a messagesChunk

```typescript
const item = await db.messagesChunk.create({
  data: { messagesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
