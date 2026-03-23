# conversationsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ConversationsChunk records

## Usage

```typescript
db.conversationsChunk.findMany({ select: { id: true } }).execute()
db.conversationsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.conversationsChunk.create({ data: { conversationsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.conversationsChunk.update({ where: { id: '<UUID>' }, data: { conversationsId: '<UUID>' }, select: { id: true } }).execute()
db.conversationsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all conversationsChunk records

```typescript
const items = await db.conversationsChunk.findMany({
  select: { id: true, conversationsId: true }
}).execute();
```

### Create a conversationsChunk

```typescript
const item = await db.conversationsChunk.create({
  data: { conversationsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
