# interactionsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for InteractionsChunk records

## Usage

```typescript
db.interactionsChunk.findMany({ select: { id: true } }).execute()
db.interactionsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.interactionsChunk.create({ data: { interactionsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.interactionsChunk.update({ where: { id: '<UUID>' }, data: { interactionsId: '<UUID>' }, select: { id: true } }).execute()
db.interactionsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all interactionsChunk records

```typescript
const items = await db.interactionsChunk.findMany({
  select: { id: true, interactionsId: true }
}).execute();
```

### Create a interactionsChunk

```typescript
const item = await db.interactionsChunk.create({
  data: { interactionsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
