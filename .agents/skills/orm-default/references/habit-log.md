# habitLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HabitLog records

## Usage

```typescript
db.habitLog.findMany({ select: { id: true } }).execute()
db.habitLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.habitLog.create({ data: { entityId: '<UUID>', habitId: '<UUID>', completedAt: '<Datetime>', activityType: '<String>', durationMinutes: '<BigFloat>', distance: '<BigFloat>', distanceUnit: '<String>', reps: '<Int>', sets: '<Int>', weightAmount: '<BigFloat>', weightUnit: '<String>', calories: '<BigFloat>', data: '<JSON>', notes: '<String>', tags: '<String>' }, select: { id: true } }).execute()
db.habitLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.habitLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all habitLog records

```typescript
const items = await db.habitLog.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a habitLog

```typescript
const item = await db.habitLog.create({
  data: { entityId: '<UUID>', habitId: '<UUID>', completedAt: '<Datetime>', activityType: '<String>', durationMinutes: '<BigFloat>', distance: '<BigFloat>', distanceUnit: '<String>', reps: '<Int>', sets: '<Int>', weightAmount: '<BigFloat>', weightUnit: '<String>', calories: '<BigFloat>', data: '<JSON>', notes: '<String>', tags: '<String>' },
  select: { id: true }
}).execute();
```
