# hikingTrailsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HikingTrailsChunk records

## Usage

```typescript
db.hikingTrailsChunk.findMany({ select: { id: true } }).execute()
db.hikingTrailsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.hikingTrailsChunk.create({ data: { entityId: '<UUID>', hikingTrailsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', hikingTrailId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.hikingTrailsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.hikingTrailsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all hikingTrailsChunk records

```typescript
const items = await db.hikingTrailsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a hikingTrailsChunk

```typescript
const item = await db.hikingTrailsChunk.create({
  data: { entityId: '<UUID>', hikingTrailsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', hikingTrailId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
