# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Habit records

## Usage

```typescript
db.habit.findMany({ select: { id: true } }).execute()
db.habit.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.habit.create({ data: { name: '<String>', frequency: '<String>', streak: '<Int>', lastCompletedAt: '<Datetime>', tags: '<String>' }, select: { id: true } }).execute()
db.habit.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.habit.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all habit records

```typescript
const items = await db.habit.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a habit

```typescript
const item = await db.habit.create({
  data: { name: '<String>', frequency: '<String>', streak: '<Int>', lastCompletedAt: '<Datetime>', tags: '<String>' },
  select: { id: true }
}).execute();
```
