# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Habit records

## Usage

```typescript
db.habit.findMany({ select: { id: true } }).execute()
db.habit.findOne({ id: '<value>', select: { id: true } }).execute()
db.habit.create({ data: { entityId: '<value>', name: '<value>', frequency: '<value>', targetCount: '<value>', currentStreak: '<value>', bestStreak: '<value>', category: '<value>', tags: '<value>' }, select: { id: true } }).execute()
db.habit.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.habit.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', frequency: 'value', targetCount: 'value', currentStreak: 'value', bestStreak: 'value', category: 'value', tags: 'value' },
  select: { id: true }
}).execute();
```
