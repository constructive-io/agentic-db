# contactEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactEvent records

## Usage

```typescript
db.contactEvent.findMany({ select: { id: true } }).execute()
db.contactEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactEvent.create({ data: { contactId: '<UUID>', eventId: '<UUID>' }, select: { id: true } }).execute()
db.contactEvent.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactEvent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactEvent records

```typescript
const items = await db.contactEvent.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactEvent

```typescript
const item = await db.contactEvent.create({
  data: { contactId: '<UUID>', eventId: '<UUID>' },
  select: { id: true }
}).execute();
```
