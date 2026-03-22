# runtimeConfig

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeConfig records

## Usage

```typescript
db.runtimeConfig.findMany({ select: { id: true } }).execute()
db.runtimeConfig.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeConfig.create({ data: { entityId: '<UUID>', key: '<String>', value: '<JSON>', description: '<String>', isSecret: '<Boolean>' }, select: { id: true } }).execute()
db.runtimeConfig.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeConfig.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeConfig records

```typescript
const items = await db.runtimeConfig.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeConfig

```typescript
const item = await db.runtimeConfig.create({
  data: { entityId: '<UUID>', key: '<String>', value: '<JSON>', description: '<String>', isSecret: '<Boolean>' },
  select: { id: true }
}).execute();
```
