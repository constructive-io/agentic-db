# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyLink records

## Usage

```typescript
db.companyLink.findMany({ select: { id: true } }).execute()
db.companyLink.findOne({ id: '<value>', select: { id: true } }).execute()
db.companyLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', companyId: '<value>', titleTrgmSimilarity: '<value>', urlTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.companyLink.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.companyLink.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all companyLink records

```typescript
const items = await db.companyLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a companyLink

```typescript
const item = await db.companyLink.create({
  data: { entityId: 'value', title: 'value', url: 'value', embedding: 'value', companyId: 'value', titleTrgmSimilarity: 'value', urlTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
