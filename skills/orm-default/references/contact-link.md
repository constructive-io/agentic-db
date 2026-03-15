# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactLink records

## Usage

```typescript
db.contactLink.findMany({ select: { id: true } }).execute()
db.contactLink.findOne({ id: '<value>', select: { id: true } }).execute()
db.contactLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', contactId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.contactLink.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.contactLink.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all contactLink records

```typescript
const items = await db.contactLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contactLink

```typescript
const item = await db.contactLink.create({
  data: { entityId: 'value', title: 'value', url: 'value', embedding: 'value', contactId: 'value', titleTrgmSimilarity: 'value', urlTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
