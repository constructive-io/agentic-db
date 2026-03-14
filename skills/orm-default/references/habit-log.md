# habitLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HabitLog records

## Usage

```typescript
db.habitLog.findMany({ select: { id: true } }).execute()
db.habitLog.findOne({ id: '<value>', select: { id: true } }).execute()
db.habitLog.create({ data: { entityId: '<value>', habitId: '<value>', completedAt: '<value>', activityType: '<value>', durationMinutes: '<value>', distance: '<value>', distanceUnit: '<value>', reps: '<value>', sets: '<value>', weightAmount: '<value>', weightUnit: '<value>', calories: '<value>', data: '<value>', notes: '<value>', tags: '<value>' }, select: { id: true } }).execute()
db.habitLog.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.habitLog.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', habitId: 'value', completedAt: 'value', activityType: 'value', durationMinutes: 'value', distance: 'value', distanceUnit: 'value', reps: 'value', sets: 'value', weightAmount: 'value', weightUnit: 'value', calories: 'value', data: 'value', notes: 'value', tags: 'value' },
  select: { id: true }
}).execute();
```
