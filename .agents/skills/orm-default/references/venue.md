# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Venue records

## Usage

```typescript
db.venue.findMany({ select: { id: true } }).execute()
db.venue.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venue.create({ data: { entityId: '<UUID>', name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.venue.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.venue.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all venue records

```typescript
const items = await db.venue.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a venue

```typescript
const item = await db.venue.create({
  data: { entityId: '<UUID>', name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
