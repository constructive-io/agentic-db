# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEvent records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.calendarEvent.findMany({ select: { id: true } }).execute()
db.calendarEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEvent.create({ data: { providerEventId: '<String>', title: '<String>', description: '<String>', startTime: '<Datetime>', endTime: '<Datetime>', meetingUrl: '<String>', organizerContactId: '<UUID>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', calendarId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerEventIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', meetingUrlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.calendarEvent.update({ where: { id: '<UUID>' }, data: { providerEventId: '<String>' }, select: { id: true } }).execute()
db.calendarEvent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEvent records

```typescript
const items = await db.calendarEvent.findMany({
  select: { id: true, providerEventId: true }
}).execute();
```

### Create a calendarEvent

```typescript
const item = await db.calendarEvent.create({
  data: { providerEventId: '<String>', title: '<String>', description: '<String>', startTime: '<Datetime>', endTime: '<Datetime>', meetingUrl: '<String>', organizerContactId: '<UUID>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', calendarId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerEventIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', meetingUrlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
