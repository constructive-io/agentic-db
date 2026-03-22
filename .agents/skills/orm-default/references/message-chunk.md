# messageChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for MessageChunk records

## Usage

```typescript
db.messageChunk.findMany({ select: { id: true } }).execute()
db.messageChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.messageChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', messageId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.messageChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.messageChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all messageChunk records

```typescript
const items = await db.messageChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a messageChunk

```typescript
const item = await db.messageChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', messageId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
