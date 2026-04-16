# contactRelationship

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactRelationship records

## Usage

```typescript
db.contactRelationship.findMany({ select: { id: true } }).execute()
db.contactRelationship.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactRelationship.create({ data: { contactId: '<UUID>', relatedContactId: '<UUID>' }, select: { id: true } }).execute()
db.contactRelationship.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactRelationship.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactRelationship records

```typescript
const items = await db.contactRelationship.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactRelationship

```typescript
const item = await db.contactRelationship.create({
  data: { contactId: '<UUID>', relatedContactId: '<UUID>' },
  select: { id: true }
}).execute();
```
