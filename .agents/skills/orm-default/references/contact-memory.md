# contactMemory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactMemory records

## Usage

```typescript
db.contactMemory.findMany({ select: { id: true } }).execute()
db.contactMemory.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactMemory.create({ data: { contactId: '<UUID>', memoryId: '<UUID>' }, select: { id: true } }).execute()
db.contactMemory.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactMemory.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactMemory records

```typescript
const items = await db.contactMemory.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactMemory

```typescript
const item = await db.contactMemory.create({
  data: { contactId: '<UUID>', memoryId: '<UUID>' },
  select: { id: true }
}).execute();
```
