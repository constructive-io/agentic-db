# orm-task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Task records

## Usage

```typescript
db.task.findMany({ select: { id: true } }).execute()
db.task.findOne({ id: '<value>', select: { id: true } }).execute()
db.task.create({ data: { entityId: '<value>', title: '<value>', description: '<value>', status: '<value>', priority: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>', bm25DescriptionScore: '<value>' }, select: { id: true } }).execute()
db.task.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.task.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all task records

```typescript
const items = await db.task.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a task

```typescript
const item = await db.task.create({
  data: { entityId: 'value', title: 'value', description: 'value', status: 'value', priority: 'value', tags: 'value', embedding: 'value', embeddingDistance: 'value', bm25DescriptionScore: 'value' },
  select: { id: true }
}).execute();
```
