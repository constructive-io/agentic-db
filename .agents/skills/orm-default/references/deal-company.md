# dealCompany

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealCompany records

## Usage

```typescript
db.dealCompany.findMany({ select: { id: true } }).execute()
db.dealCompany.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.dealCompany.create({ data: { dealId: '<UUID>', companyId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.dealCompany.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute()
db.dealCompany.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all dealCompany records

```typescript
const items = await db.dealCompany.findMany({
  select: { id: true, dealId: true }
}).execute();
```

### Create a dealCompany

```typescript
const item = await db.dealCompany.create({
  data: { dealId: '<UUID>', companyId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
