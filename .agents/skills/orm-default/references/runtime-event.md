# runtimeEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeEvent records

## Usage

```typescript
db.runtimeEvent.findMany({ select: { id: true } }).execute()
db.runtimeEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeEvent.create({ data: { eventType: '<String>', payload: '<JSON>', source: '<String>', processedAt: '<Datetime>', status: '<String>' }, select: { id: true } }).execute()
db.runtimeEvent.update({ where: { id: '<UUID>' }, data: { eventType: '<String>' }, select: { id: true } }).execute()
db.runtimeEvent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeEvent records

```typescript
const items = await db.runtimeEvent.findMany({
  select: { id: true, eventType: true }
}).execute();
```

### Create a runtimeEvent

```typescript
const item = await db.runtimeEvent.create({
  data: { eventType: '<String>', payload: '<JSON>', source: '<String>', processedAt: '<Datetime>', status: '<String>' },
  select: { id: true }
}).execute();
```
