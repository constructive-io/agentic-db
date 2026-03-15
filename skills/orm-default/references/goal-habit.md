# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for GoalHabit records

## Usage

```typescript
db.goalHabit.findMany({ select: { id: true } }).execute()
db.goalHabit.findOne({ id: '<value>', select: { id: true } }).execute()
db.goalHabit.create({ data: { goalId: '<value>', habitId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.goalHabit.update({ where: { id: '<value>' }, data: { goalId: '<new>' }, select: { id: true } }).execute()
db.goalHabit.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all goalHabit records

```typescript
const items = await db.goalHabit.findMany({
  select: { id: true, goalId: true }
}).execute();
```

### Create a goalHabit

```typescript
const item = await db.goalHabit.create({
  data: { goalId: 'value', habitId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
