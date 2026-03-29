# calendarEventsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEventsChunk records

## Usage

```typescript
db.calendarEventsChunk.findMany({ select: { id: true } }).execute()
db.calendarEventsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEventsChunk.create({ data: { calendarEventsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.calendarEventsChunk.update({ where: { id: '<UUID>' }, data: { calendarEventsId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEventsChunk records

```typescript
const items = await db.calendarEventsChunk.findMany({
  select: { id: true, calendarEventsId: true }
}).execute();
```

### Create a calendarEventsChunk

```typescript
const item = await db.calendarEventsChunk.create({
  data: { calendarEventsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
