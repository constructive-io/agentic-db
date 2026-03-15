# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventLink records

## Usage

```typescript
db.eventLink.findMany({ select: { id: true } }).execute()
db.eventLink.findOne({ id: '<value>', select: { id: true } }).execute()
db.eventLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', eventId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.eventLink.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.eventLink.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all eventLink records

```typescript
const items = await db.eventLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a eventLink

```typescript
const item = await db.eventLink.create({
  data: { entityId: 'value', title: 'value', url: 'value', embedding: 'value', eventId: 'value', titleTrgmSimilarity: 'value', urlTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
