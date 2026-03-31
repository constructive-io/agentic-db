# expensesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ExpensesChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.expensesChunk.findMany({ select: { id: true } }).execute()
db.expensesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.expensesChunk.create({ data: { expensesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.expensesChunk.update({ where: { id: '<UUID>' }, data: { expensesId: '<UUID>' }, select: { id: true } }).execute()
db.expensesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all expensesChunk records

```typescript
const items = await db.expensesChunk.findMany({
  select: { id: true, expensesId: true }
}).execute();
```

### Create a expensesChunk

```typescript
const item = await db.expensesChunk.create({
  data: { expensesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
