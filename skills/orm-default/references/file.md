# file

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for File records

## Usage

```typescript
db.file.findMany({ select: { id: true } }).execute()
db.file.findOne({ id: '<value>', select: { id: true } }).execute()
db.file.create({ data: { entityId: '<value>', repositoryId: '<value>', path: '<value>', language: '<value>', hash: '<value>' }, select: { id: true } }).execute()
db.file.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.file.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', repositoryId: 'value', path: 'value', language: 'value', hash: 'value' },
  select: { id: true }
}).execute();
```
