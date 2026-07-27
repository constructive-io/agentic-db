# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventLink records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.eventLink.findMany({ select: { id: true } }).execute()
db.eventLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.eventLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.eventLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventLink records

```typescript
const items = await db.eventLink.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a eventLink

```typescript
const item = await db.eventLink.create({
  data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', eventId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
