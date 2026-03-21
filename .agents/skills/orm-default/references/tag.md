# tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Tag records

## Usage

```typescript
db.tag.findMany({ select: { id: true } }).execute()
db.tag.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tag.create({ data: { entityId: '<UUID>', name: '<String>', color: '<String>', category: '<String>', usageCount: '<Int>' }, select: { id: true } }).execute()
db.tag.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.tag.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tag records

```typescript
const items = await db.tag.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a tag

```typescript
const item = await db.tag.create({
  data: { entityId: '<UUID>', name: '<String>', color: '<String>', category: '<String>', usageCount: '<Int>' },
  select: { id: true }
}).execute();
```
