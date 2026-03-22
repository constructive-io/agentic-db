# itineraryItemChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ItineraryItemChunk records

## Usage

```typescript
db.itineraryItemChunk.findMany({ select: { id: true } }).execute()
db.itineraryItemChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.itineraryItemChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', itineraryItemId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.itineraryItemChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.itineraryItemChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all itineraryItemChunk records

```typescript
const items = await db.itineraryItemChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a itineraryItemChunk

```typescript
const item = await db.itineraryItemChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', itineraryItemId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
