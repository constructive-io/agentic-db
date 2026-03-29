# expensesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ExpensesChunk records

## Usage

```typescript
db.expensesChunk.findMany({ select: { id: true } }).execute()
db.expensesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.expensesChunk.create({ data: { entityId: '<UUID>', expensesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', expenseId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.expensesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.expensesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all expensesChunk records

```typescript
const items = await db.expensesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a expensesChunk

```typescript
const item = await db.expensesChunk.create({
  data: { entityId: '<UUID>', expensesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', expenseId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
