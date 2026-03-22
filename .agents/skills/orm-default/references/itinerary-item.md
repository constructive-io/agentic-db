# itineraryItem

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ItineraryItem records

## Usage

```typescript
db.itineraryItem.findMany({ select: { id: true } }).execute()
db.itineraryItem.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.itineraryItem.create({ data: { entityId: '<UUID>', tripId: '<UUID>', name: '<String>', description: '<String>', dayNumber: '<Int>', startTime: '<Datetime>', endTime: '<Datetime>', placeId: '<UUID>', category: '<String>', cost: '<BigFloat>', notes: '<String>', sortOrder: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.itineraryItem.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.itineraryItem.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all itineraryItem records

```typescript
const items = await db.itineraryItem.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a itineraryItem

```typescript
const item = await db.itineraryItem.create({
  data: { entityId: '<UUID>', tripId: '<UUID>', name: '<String>', description: '<String>', dayNumber: '<Int>', startTime: '<Datetime>', endTime: '<Datetime>', placeId: '<UUID>', category: '<String>', cost: '<BigFloat>', notes: '<String>', sortOrder: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
