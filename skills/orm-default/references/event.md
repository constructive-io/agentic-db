# event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Event records

## Usage

```typescript
db.event.findMany({ select: { id: true } }).execute()
db.event.findOne({ id: '<value>', select: { id: true } }).execute()
db.event.create({ data: { entityId: '<value>', name: '<value>', eventType: '<value>', location: '<value>', city: '<value>', startedAt: '<value>', endedAt: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', nameTrgmSimilarity: '<value>', eventTypeTrgmSimilarity: '<value>', locationTrgmSimilarity: '<value>', cityTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.event.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.event.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all event records

```typescript
const items = await db.event.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a event

```typescript
const item = await db.event.create({
  data: { entityId: 'value', name: 'value', eventType: 'value', location: 'value', city: 'value', startedAt: 'value', endedAt: 'value', notes: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', searchTsv: 'value', mainImageId: 'value', searchTsvRank: 'value', nameTrgmSimilarity: 'value', eventTypeTrgmSimilarity: 'value', locationTrgmSimilarity: 'value', cityTrgmSimilarity: 'value', notesTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
