# tripChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TripChunk records

## Usage

```typescript
db.tripChunk.findMany({ select: { id: true } }).execute()
db.tripChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tripChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.tripChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.tripChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tripChunk records

```typescript
const items = await db.tripChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a tripChunk

```typescript
const item = await db.tripChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
