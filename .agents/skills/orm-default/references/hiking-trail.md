# hikingTrail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HikingTrail records

## Usage

```typescript
db.hikingTrail.findMany({ select: { id: true } }).execute()
db.hikingTrail.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.hikingTrail.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', difficulty: '<String>', distanceKm: '<BigFloat>', elevationGainm: '<BigFloat>', estimatedTimeHours: '<BigFloat>', trailType: '<String>', region: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', trailTypeTrgmSimilarity: '<Float>', regionTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.hikingTrail.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.hikingTrail.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all hikingTrail records

```typescript
const items = await db.hikingTrail.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a hikingTrail

```typescript
const item = await db.hikingTrail.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', difficulty: '<String>', distanceKm: '<BigFloat>', elevationGainm: '<BigFloat>', estimatedTimeHours: '<BigFloat>', trailType: '<String>', region: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', trailTypeTrgmSimilarity: '<Float>', regionTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
