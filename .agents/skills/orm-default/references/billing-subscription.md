# billingSubscription

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for BillingSubscription records

## Usage

```typescript
db.billingSubscription.findMany({ select: { id: true } }).execute()
db.billingSubscription.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.billingSubscription.create({ data: { entityId: '<UUID>', name: '<String>', amount: '<BigFloat>', currency: '<String>', frequency: '<String>', provider: '<String>', nextBillingDate: '<Date>', cancellationDate: '<Date>', status: '<String>', tags: '<String>', notes: '<String>' }, select: { id: true } }).execute()
db.billingSubscription.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.billingSubscription.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', name: '<String>', amount: '<BigFloat>', currency: '<String>', frequency: '<String>', provider: '<String>', nextBillingDate: '<Date>', cancellationDate: '<Date>', status: '<String>', tags: '<String>', notes: '<String>' },
  select: { id: true }
}).execute();
```
