# runtimeSchedule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeSchedule records

## Usage

```typescript
db.runtimeSchedule.findMany({ select: { id: true } }).execute()
db.runtimeSchedule.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeSchedule.create({ data: { name: '<String>', cronExpression: '<String>', nextRunAt: '<Datetime>', lastRunAt: '<Datetime>', isActive: '<Boolean>', config: '<JSON>', timezone: '<String>' }, select: { id: true } }).execute()
db.runtimeSchedule.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.runtimeSchedule.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeSchedule records

```typescript
const items = await db.runtimeSchedule.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a runtimeSchedule

```typescript
const item = await db.runtimeSchedule.create({
  data: { name: '<String>', cronExpression: '<String>', nextRunAt: '<Datetime>', lastRunAt: '<Datetime>', isActive: '<Boolean>', config: '<JSON>', timezone: '<String>' },
  select: { id: true }
}).execute();
```
