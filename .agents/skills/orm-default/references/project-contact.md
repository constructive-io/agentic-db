# projectContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ProjectContact records

## Usage

```typescript
db.projectContact.findMany({ select: { id: true } }).execute()
db.projectContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.projectContact.create({ data: { projectId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute()
db.projectContact.update({ where: { id: '<UUID>' }, data: { projectId: '<UUID>' }, select: { id: true } }).execute()
db.projectContact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all projectContact records

```typescript
const items = await db.projectContact.findMany({
  select: { id: true, projectId: true }
}).execute();
```

### Create a projectContact

```typescript
const item = await db.projectContact.create({
  data: { projectId: '<UUID>', contactId: '<UUID>' },
  select: { id: true }
}).execute();
```
