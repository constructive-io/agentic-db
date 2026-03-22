# idea

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Idea records

## Usage

```typescript
db.idea.findMany({ select: { id: true } }).execute()
db.idea.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.idea.create({ data: { entityId: '<UUID>', content: '<String>', source: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.idea.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.idea.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all idea records

```typescript
const items = await db.idea.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a idea

```typescript
const item = await db.idea.create({
  data: { entityId: '<UUID>', content: '<String>', source: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
