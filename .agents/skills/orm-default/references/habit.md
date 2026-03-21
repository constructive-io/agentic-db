# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Habit records

## Usage

```typescript
db.habit.findMany({ select: { id: true } }).execute()
db.habit.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.habit.create({ data: { entityId: '<UUID>', name: '<String>', frequency: '<String>', targetCount: '<Int>', currentStreak: '<Int>', bestStreak: '<Int>', category: '<String>', tags: '<String>' }, select: { id: true } }).execute()
db.habit.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.habit.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all habit records

```typescript
const items = await db.habit.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a habit

```typescript
const item = await db.habit.create({
  data: { entityId: '<UUID>', name: '<String>', frequency: '<String>', targetCount: '<Int>', currentStreak: '<Int>', bestStreak: '<Int>', category: '<String>', tags: '<String>' },
  select: { id: true }
}).execute();
```
