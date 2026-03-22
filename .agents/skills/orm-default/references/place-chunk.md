# placeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for PlaceChunk records

## Usage

```typescript
db.placeChunk.findMany({ select: { id: true } }).execute()
db.placeChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.placeChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', placeId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.placeChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.placeChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all placeChunk records

```typescript
const items = await db.placeChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a placeChunk

```typescript
const item = await db.placeChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', placeId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
