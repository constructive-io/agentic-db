# billingSubscription

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for BillingSubscription records

## Usage

```typescript
db.billingSubscription.findMany({ select: { id: true } }).execute()
db.billingSubscription.findOne({ id: '<value>', select: { id: true } }).execute()
db.billingSubscription.create({ data: { entityId: '<value>', name: '<value>', amount: '<value>', currency: '<value>', frequency: '<value>', provider: '<value>', nextBillingDate: '<value>', cancellationDate: '<value>', status: '<value>', tags: '<value>', notes: '<value>', nameTrgmSimilarity: '<value>', currencyTrgmSimilarity: '<value>', frequencyTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', notesTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.billingSubscription.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.billingSubscription.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all billingSubscription records

```typescript
const items = await db.billingSubscription.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a billingSubscription

```typescript
const item = await db.billingSubscription.create({
  data: { entityId: 'value', name: 'value', amount: 'value', currency: 'value', frequency: 'value', provider: 'value', nextBillingDate: 'value', cancellationDate: 'value', status: 'value', tags: 'value', notes: 'value', nameTrgmSimilarity: 'value', currencyTrgmSimilarity: 'value', frequencyTrgmSimilarity: 'value', providerTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', notesTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
