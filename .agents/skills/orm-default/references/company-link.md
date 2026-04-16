# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyLink records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.companyLink.findMany({ select: { id: true } }).execute()
db.companyLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyLink.create({ data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.companyLink.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.companyLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyLink records

```typescript
const items = await db.companyLink.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a companyLink

```typescript
const item = await db.companyLink.create({
  data: { title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
