# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactLink records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.contactLink.findMany({ select: { id: true } }).execute()
db.contactLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.contactLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.contactLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactLink records

```typescript
const items = await db.contactLink.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a contactLink

```typescript
const item = await db.contactLink.create({
  data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
