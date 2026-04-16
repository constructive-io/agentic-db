# runtimeMetric

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeMetric records

## Usage

```typescript
db.runtimeMetric.findMany({ select: { id: true } }).execute()
db.runtimeMetric.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeMetric.create({ data: { runtimeStateId: '<UUID>', metricName: '<String>', metricValue: '<BigFloat>', unit: '<String>', meta: '<JSON>' }, select: { id: true } }).execute()
db.runtimeMetric.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeMetric.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeMetric records

```typescript
const items = await db.runtimeMetric.findMany({
  select: { id: true, runtimeStateId: true }
}).execute();
```

### Create a runtimeMetric

```typescript
const item = await db.runtimeMetric.create({
  data: { runtimeStateId: '<UUID>', metricName: '<String>', metricValue: '<BigFloat>', unit: '<String>', meta: '<JSON>' },
  select: { id: true }
}).execute();
```
