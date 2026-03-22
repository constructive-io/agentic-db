# contactNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactNote records

## Usage

```typescript
db.contactNote.findMany({ select: { id: true } }).execute()
db.contactNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactNote.create({ data: { contactId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.contactNote.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactNote records

```typescript
const items = await db.contactNote.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactNote

```typescript
const item = await db.contactNote.create({
  data: { contactId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
