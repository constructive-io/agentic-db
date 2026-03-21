# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for GoalHabit records

## Usage

```typescript
db.goalHabit.findMany({ select: { id: true } }).execute()
db.goalHabit.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.goalHabit.create({ data: { goalId: '<UUID>', habitId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.goalHabit.update({ where: { id: '<UUID>' }, data: { goalId: '<UUID>' }, select: { id: true } }).execute()
db.goalHabit.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { goalId: '<UUID>', habitId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
