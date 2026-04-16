# rawContactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawContactPhone records

## Usage

```typescript
db.rawContactPhone.findMany({ select: { id: true } }).execute()
db.rawContactPhone.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawContactPhone.create({ data: { phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' }, select: { id: true } }).execute()
db.rawContactPhone.update({ where: { id: '<UUID>' }, data: { phone: '<String>' }, select: { id: true } }).execute()
db.rawContactPhone.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawContactPhone records

```typescript
const items = await db.rawContactPhone.findMany({
  select: { id: true, phone: true }
}).execute();
```

### Create a rawContactPhone

```typescript
const item = await db.rawContactPhone.create({
  data: { phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' },
  select: { id: true }
}).execute();
```
