# placesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for PlacesChunk records

## Usage

```typescript
db.placesChunk.findMany({ select: { id: true } }).execute()
db.placesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.placesChunk.create({ data: { entityId: '<UUID>', placesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', placeId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.placesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.placesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all placesChunk records

```typescript
const items = await db.placesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a placesChunk

```typescript
const item = await db.placesChunk.create({
  data: { entityId: '<UUID>', placesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', placeId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
