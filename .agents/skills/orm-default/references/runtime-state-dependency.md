# runtimeStateDependency

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeStateDependency records

## Usage

```typescript
db.runtimeStateDependency.findMany({ select: { id: true } }).execute()
db.runtimeStateDependency.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeStateDependency.create({ data: { stateId: '<UUID>', dependencyId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeStateDependency.update({ where: { id: '<UUID>' }, data: { stateId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeStateDependency.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeStateDependency records

```typescript
const items = await db.runtimeStateDependency.findMany({
  select: { id: true, stateId: true }
}).execute();
```

### Create a runtimeStateDependency

```typescript
const item = await db.runtimeStateDependency.create({
  data: { stateId: '<UUID>', dependencyId: '<UUID>' },
  select: { id: true }
}).execute();
```
