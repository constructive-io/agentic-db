# hikingTrailChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HikingTrailChunk records

## Usage

```typescript
db.hikingTrailChunk.findMany({ select: { id: true } }).execute()
db.hikingTrailChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.hikingTrailChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', hikingTrailId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.hikingTrailChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.hikingTrailChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all hikingTrailChunk records

```typescript
const items = await db.hikingTrailChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a hikingTrailChunk

```typescript
const item = await db.hikingTrailChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', hikingTrailId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
