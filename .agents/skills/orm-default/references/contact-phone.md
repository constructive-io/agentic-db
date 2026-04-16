# contactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactPhone records

## Usage

```typescript
db.contactPhone.findMany({ select: { id: true } }).execute()
db.contactPhone.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactPhone.create({ data: { phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactPhone.update({ where: { id: '<UUID>' }, data: { phone: '<String>' }, select: { id: true } }).execute()
db.contactPhone.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactPhone records

```typescript
const items = await db.contactPhone.findMany({
  select: { id: true, phone: true }
}).execute();
```

### Create a contactPhone

```typescript
const item = await db.contactPhone.create({
  data: { phone: '<String>', phoneType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' },
  select: { id: true }
}).execute();
```
