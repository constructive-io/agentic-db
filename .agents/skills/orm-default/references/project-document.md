# projectDocument

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ProjectDocument records

## Usage

```typescript
db.projectDocument.findMany({ select: { id: true } }).execute()
db.projectDocument.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.projectDocument.create({ data: { projectId: '<UUID>', documentId: '<UUID>' }, select: { id: true } }).execute()
db.projectDocument.update({ where: { id: '<UUID>' }, data: { projectId: '<UUID>' }, select: { id: true } }).execute()
db.projectDocument.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all projectDocument records

```typescript
const items = await db.projectDocument.findMany({
  select: { id: true, projectId: true }
}).execute();
```

### Create a projectDocument

```typescript
const item = await db.projectDocument.create({
  data: { projectId: '<UUID>', documentId: '<UUID>' },
  select: { id: true }
}).execute();
```
