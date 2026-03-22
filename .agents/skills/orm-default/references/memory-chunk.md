# memoryChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for MemoryChunk records

## Usage

```typescript
db.memoryChunk.findMany({ select: { id: true } }).execute()
db.memoryChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.memoryChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', memoryId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.memoryChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.memoryChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all memoryChunk records

```typescript
const items = await db.memoryChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a memoryChunk

```typescript
const item = await db.memoryChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', memoryId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
