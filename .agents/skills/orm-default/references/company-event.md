# companyEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyEvent records

## Usage

```typescript
db.companyEvent.findMany({ select: { id: true } }).execute()
db.companyEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyEvent.create({ data: { companyId: '<UUID>', eventId: '<UUID>' }, select: { id: true } }).execute()
db.companyEvent.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute()
db.companyEvent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyEvent records

```typescript
const items = await db.companyEvent.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyEvent

```typescript
const item = await db.companyEvent.create({
  data: { companyId: '<UUID>', eventId: '<UUID>' },
  select: { id: true }
}).execute();
```
