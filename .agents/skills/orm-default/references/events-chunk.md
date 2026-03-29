# eventsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventsChunk records

## Usage

```typescript
db.eventsChunk.findMany({ select: { id: true } }).execute()
db.eventsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventsChunk.create({ data: { entityId: '<UUID>', eventsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.eventsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.eventsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventsChunk records

```typescript
const items = await db.eventsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a eventsChunk

```typescript
const item = await db.eventsChunk.create({
  data: { entityId: '<UUID>', eventsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
