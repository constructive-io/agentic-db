# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Trip records

## Usage

```typescript
db.trip.findMany({ select: { id: true } }).execute()
db.trip.findOne({ id: '<value>', select: { id: true } }).execute()
db.trip.create({ data: { entityId: '<value>', name: '<value>', destination: '<value>', startDate: '<value>', endDate: '<value>', status: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', destinationTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.trip.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.trip.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all trip records

```typescript
const items = await db.trip.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a trip

```typescript
const item = await db.trip.create({
  data: { entityId: 'value', name: 'value', destination: 'value', startDate: 'value', endDate: 'value', status: 'value', notes: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', nameTrgmSimilarity: 'value', destinationTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', notesTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
