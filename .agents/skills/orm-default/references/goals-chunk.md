# goalsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for GoalsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.goalsChunk.findMany({ select: { id: true } }).execute()
db.goalsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.goalsChunk.create({ data: { goalsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.goalsChunk.update({ where: { id: '<UUID>' }, data: { goalsId: '<UUID>' }, select: { id: true } }).execute()
db.goalsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all goalsChunk records

```typescript
const items = await db.goalsChunk.findMany({
  select: { id: true, goalsId: true }
}).execute();
```

### Create a goalsChunk

```typescript
const item = await db.goalsChunk.create({
  data: { goalsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
