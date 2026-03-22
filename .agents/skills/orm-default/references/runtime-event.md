# runtimeEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeEvent records

## Usage

```typescript
db.runtimeEvent.findMany({ select: { id: true } }).execute()
db.runtimeEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeEvent.create({ data: { entityId: '<UUID>', eventType: '<String>', payload: '<JSON>', source: '<String>', processedAt: '<Datetime>', status: '<String>' }, select: { id: true } }).execute()
db.runtimeEvent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeEvent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeEvent records

```typescript
const items = await db.runtimeEvent.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeEvent

```typescript
const item = await db.runtimeEvent.create({
  data: { entityId: '<UUID>', eventType: '<String>', payload: '<JSON>', source: '<String>', processedAt: '<Datetime>', status: '<String>' },
  select: { id: true }
}).execute();
```
