# itineraryItemsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ItineraryItemsChunk records

## Usage

```typescript
db.itineraryItemsChunk.findMany({ select: { id: true } }).execute()
db.itineraryItemsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.itineraryItemsChunk.create({ data: { itineraryItemsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.itineraryItemsChunk.update({ where: { id: '<UUID>' }, data: { itineraryItemsId: '<UUID>' }, select: { id: true } }).execute()
db.itineraryItemsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all itineraryItemsChunk records

```typescript
const items = await db.itineraryItemsChunk.findMany({
  select: { id: true, itineraryItemsId: true }
}).execute();
```

### Create a itineraryItemsChunk

```typescript
const item = await db.itineraryItemsChunk.create({
  data: { itineraryItemsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
