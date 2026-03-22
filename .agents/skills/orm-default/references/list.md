# list

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for List records

## Usage

```typescript
db.list.findMany({ select: { id: true } }).execute()
db.list.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.list.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.list.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.list.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all list records

```typescript
const items = await db.list.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a list

```typescript
const item = await db.list.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
