# hikingTrail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HikingTrail records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.hikingTrail.findMany({ select: { id: true } }).execute()
db.hikingTrail.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.hikingTrail.create({ data: { entityId: '<UUID>', name: '<String>', location: '<String>', description: '<String>', difficulty: '<String>', distanceKm: '<BigFloat>', elevationGainm: '<BigFloat>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', trailheadGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
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
  data: { entityId: '<UUID>', name: '<String>', location: '<String>', description: '<String>', difficulty: '<String>', distanceKm: '<BigFloat>', elevationGainm: '<BigFloat>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', trailheadGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
