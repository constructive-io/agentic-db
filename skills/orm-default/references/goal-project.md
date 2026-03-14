# goalProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for GoalProject records

## Usage

```typescript
db.goalProject.findMany({ select: { id: true } }).execute()
db.goalProject.findOne({ id: '<value>', select: { id: true } }).execute()
db.goalProject.create({ data: { goalId: '<value>', projectId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.goalProject.update({ where: { id: '<value>' }, data: { goalId: '<new>' }, select: { id: true } }).execute()
db.goalProject.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all goalProject records

```typescript
const items = await db.goalProject.findMany({
  select: { id: true, goalId: true }
}).execute();
```

### Create a goalProject

```typescript
const item = await db.goalProject.create({
  data: { goalId: 'value', projectId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
