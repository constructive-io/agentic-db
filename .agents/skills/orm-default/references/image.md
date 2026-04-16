# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Image records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.image.findMany({ select: { id: true } }).execute()
db.image.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.image.create({ data: { url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.image.update({ where: { id: '<UUID>' }, data: { url: '<String>' }, select: { id: true } }).execute()
db.image.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all image records

```typescript
const items = await db.image.findMany({
  select: { id: true, url: true }
}).execute();
```

### Create a image

```typescript
const item = await db.image.create({
  data: { url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
