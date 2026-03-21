# calendarEventChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEventChunk records

## Usage

```typescript
db.calendarEventChunk.findMany({ select: { id: true } }).execute()
db.calendarEventChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEventChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', calendarEventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.calendarEventChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEventChunk records

```typescript
const items = await db.calendarEventChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a calendarEventChunk

```typescript
const item = await db.calendarEventChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', calendarEventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
