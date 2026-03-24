# rawContactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawContactPhone records

## Usage

```typescript
db.rawContactPhone.findMany({ select: { id: true } }).execute()
db.rawContactPhone.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawContactPhone.create({ data: { entityId: '<UUID>', rawContactId: '<UUID>', phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', ingestedAt: '<Datetime>' }, select: { id: true } }).execute()
db.rawContactPhone.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.rawContactPhone.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawContactPhone records

```typescript
const items = await db.rawContactPhone.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rawContactPhone

```typescript
const item = await db.rawContactPhone.create({
  data: { entityId: '<UUID>', rawContactId: '<UUID>', phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', ingestedAt: '<Datetime>' },
  select: { id: true }
}).execute();
```
