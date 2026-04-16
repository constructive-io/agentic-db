# contactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactEmail records

## Usage

```typescript
db.contactEmail.findMany({ select: { id: true } }).execute()
db.contactEmail.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactEmail.create({ data: { email: '<String>', emailType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactEmail.update({ where: { id: '<UUID>' }, data: { email: '<String>' }, select: { id: true } }).execute()
db.contactEmail.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactEmail records

```typescript
const items = await db.contactEmail.findMany({
  select: { id: true, email: true }
}).execute();
```

### Create a contactEmail

```typescript
const item = await db.contactEmail.create({
  data: { email: '<String>', emailType: '<String>', isPrimary: '<Boolean>', contactId: '<UUID>' },
  select: { id: true }
}).execute();
```
