# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenueLink records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.venueLink.findMany({ select: { id: true } }).execute()
db.venueLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venueLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.venueLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.venueLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all venueLink records

```typescript
const items = await db.venueLink.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a venueLink

```typescript
const item = await db.venueLink.create({
  data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
