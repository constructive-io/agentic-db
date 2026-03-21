# dealContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealContact records

## Usage

```typescript
db.dealContact.findMany({ select: { id: true } }).execute()
db.dealContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.dealContact.create({ data: { dealId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.dealContact.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute()
db.dealContact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all dealContact records

```typescript
const items = await db.dealContact.findMany({
  select: { id: true, dealId: true }
}).execute();
```

### Create a dealContact

```typescript
const item = await db.dealContact.create({
  data: { dealId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
