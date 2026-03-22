# event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Event records

## Usage

```typescript
db.event.findMany({ select: { id: true } }).execute()
db.event.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.event.create({ data: { entityId: '<UUID>', name: '<String>', eventType: '<String>', location: '<String>', city: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', notesText: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', eventTypeTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.event.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.event.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all event records

```typescript
const items = await db.event.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a event

```typescript
const item = await db.event.create({
  data: { entityId: '<UUID>', name: '<String>', eventType: '<String>', location: '<String>', city: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', notesText: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', eventTypeTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', cityTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
