# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Venue records

## Usage

```typescript
db.venue.findMany({ select: { id: true } }).execute()
db.venue.findOne({ id: '<value>', select: { id: true } }).execute()
db.venue.create({ data: { entityId: '<value>', name: '<value>', address: '<value>', neighborhood: '<value>', city: '<value>', category: '<value>', status: '<value>', googlePlaceId: '<value>', rating: '<value>', priceLevel: '<value>', isFavorite: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', embeddingTextBm25Score: '<value>', nameTrgmSimilarity: '<value>', addressTrgmSimilarity: '<value>', neighborhoodTrgmSimilarity: '<value>', cityTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', googlePlaceIdTrgmSimilarity: '<value>', priceLevelTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.venue.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.venue.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', address: 'value', neighborhood: 'value', city: 'value', category: 'value', status: 'value', googlePlaceId: 'value', rating: 'value', priceLevel: 'value', isFavorite: 'value', notes: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', searchTsv: 'value', mainImageId: 'value', searchTsvRank: 'value', embeddingTextBm25Score: 'value', nameTrgmSimilarity: 'value', addressTrgmSimilarity: 'value', neighborhoodTrgmSimilarity: 'value', cityTrgmSimilarity: 'value', categoryTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', googlePlaceIdTrgmSimilarity: 'value', priceLevelTrgmSimilarity: 'value', notesTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
