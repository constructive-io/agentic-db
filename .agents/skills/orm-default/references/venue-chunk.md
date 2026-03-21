# venueChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenueChunk records

## Usage

```typescript
db.venueChunk.findMany({ select: { id: true } }).execute()
db.venueChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venueChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', venueId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.venueChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.venueChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all venueChunk records

```typescript
const items = await db.venueChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a venueChunk

```typescript
const item = await db.venueChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', venueId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
