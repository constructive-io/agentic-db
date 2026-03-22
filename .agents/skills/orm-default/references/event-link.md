# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventLink records

## Usage

```typescript
db.eventLink.findMany({ select: { id: true } }).execute()
db.eventLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.eventLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.eventLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventLink records

```typescript
const items = await db.eventLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a eventLink

```typescript
const item = await db.eventLink.create({
  data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
