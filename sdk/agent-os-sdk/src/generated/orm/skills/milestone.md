# orm-milestone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Milestone records

## Usage

```typescript
db.milestone.findMany({ select: { id: true } }).execute()
db.milestone.findOne({ id: '<value>', select: { id: true } }).execute()
db.milestone.create({ data: { entityId: '<value>', name: '<value>', dueDate: '<value>', embedding: '<value>', projectId: '<value>' }, select: { id: true } }).execute()
db.milestone.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.milestone.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all milestone records

```typescript
const items = await db.milestone.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a milestone

```typescript
const item = await db.milestone.create({
  data: { entityId: 'value', name: 'value', dueDate: 'value', embedding: 'value', projectId: 'value' },
  select: { id: true }
}).execute();
```
