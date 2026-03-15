# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Deal records

## Usage

```typescript
db.deal.findMany({ select: { id: true } }).execute()
db.deal.findOne({ id: '<value>', select: { id: true } }).execute()
db.deal.create({ data: { entityId: '<value>', name: '<value>', stage: '<value>', value: '<value>', currency: '<value>', expectedCloseDate: '<value>', notes: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', stageTrgmSimilarity: '<value>', currencyTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.deal.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.deal.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all deal records

```typescript
const items = await db.deal.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a deal

```typescript
const item = await db.deal.create({
  data: { entityId: 'value', name: 'value', stage: 'value', value: 'value', currency: 'value', expectedCloseDate: 'value', notes: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', nameTrgmSimilarity: 'value', stageTrgmSimilarity: 'value', currencyTrgmSimilarity: 'value', notesTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
