# place

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Place records

## Usage

```typescript
db.place.findMany({ select: { id: true } }).execute()
db.place.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.place.create({ data: { entityId: '<UUID>', name: '<String>', address: '<String>', description: '<String>', category: '<String>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.place.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.place.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all place records

```typescript
const items = await db.place.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a place

```typescript
const item = await db.place.create({
  data: { entityId: '<UUID>', name: '<String>', address: '<String>', description: '<String>', category: '<String>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
