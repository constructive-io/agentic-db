# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Trip records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.trip.findMany({ select: { id: true } }).execute()
db.trip.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.trip.create({ data: { name: '<String>', destination: '<String>', description: '<String>', startDate: '<Datetime>', endDate: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', destinationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', destinationTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.trip.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.trip.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all trip records

```typescript
const items = await db.trip.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a trip

```typescript
const item = await db.trip.create({
  data: { name: '<String>', destination: '<String>', description: '<String>', startDate: '<Datetime>', endDate: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', destinationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', destinationTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
