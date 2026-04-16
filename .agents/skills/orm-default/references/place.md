# place

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Place records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.place.findMany({ select: { id: true } }).execute()
db.place.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.place.create({ data: { name: '<String>', address: '<String>', description: '<String>', category: '<String>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.place.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.place.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all place records

```typescript
const items = await db.place.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a place

```typescript
const item = await db.place.create({
  data: { name: '<String>', address: '<String>', description: '<String>', category: '<String>', rating: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
