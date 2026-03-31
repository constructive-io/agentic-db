# contactAddress

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactAddress records

## Usage

```typescript
db.contactAddress.findMany({ select: { id: true } }).execute()
db.contactAddress.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactAddress.create({ data: { entityId: '<UUID>', street: '<String>', city: '<String>', state: '<String>', postalCode: '<String>', country: '<String>', addressType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactAddress.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.contactAddress.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactAddress records

```typescript
const items = await db.contactAddress.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contactAddress

```typescript
const item = await db.contactAddress.create({
  data: { entityId: '<UUID>', street: '<String>', city: '<String>', state: '<String>', postalCode: '<String>', country: '<String>', addressType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' },
  select: { id: true }
}).execute();
```
