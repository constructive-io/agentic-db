# file

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for File records

## Usage

```typescript
db.file.findMany({ select: { id: true } }).execute()
db.file.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.file.create({ data: { entityId: '<UUID>', repositoryId: '<UUID>', path: '<String>', language: '<String>', hash: '<String>' }, select: { id: true } }).execute()
db.file.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.file.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all file records

```typescript
const items = await db.file.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a file

```typescript
const item = await db.file.create({
  data: { entityId: '<UUID>', repositoryId: '<UUID>', path: '<String>', language: '<String>', hash: '<String>' },
  select: { id: true }
}).execute();
```
