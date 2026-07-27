# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Venue records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.venue.findMany({ select: { id: true } }).execute()
db.venue.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venue.create({ data: { name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', location: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.venue.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.venue.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all venue records

```typescript
const items = await db.venue.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a venue

```typescript
const item = await db.venue.create({
  data: { name: '<String>', address: '<String>', neighborhood: '<String>', city: '<String>', category: '<String>', status: '<String>', googlePlaceId: '<String>', rating: '<BigFloat>', priceLevel: '<String>', isFavorite: '<Boolean>', notes: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', location: '<GeographyInterface>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', addressTrgmSimilarity: '<Float>', neighborhoodTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', googlePlaceIdTrgmSimilarity: '<Float>', priceLevelTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
