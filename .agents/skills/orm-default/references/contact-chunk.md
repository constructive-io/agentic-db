# contactChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactChunk records

## Usage

```typescript
db.contactChunk.findMany({ select: { id: true } }).execute()
db.contactChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.contactChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.contactChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactChunk records

```typescript
const items = await db.contactChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contactChunk

```typescript
const item = await db.contactChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
