# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Prompt records

## Usage

```typescript
db.prompt.findMany({ select: { id: true } }).execute()
db.prompt.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.prompt.create({ data: { entityId: '<UUID>', name: '<String>', content: '<String>', type: '<String>', model: '<String>', version: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.prompt.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.prompt.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all prompt records

```typescript
const items = await db.prompt.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a prompt

```typescript
const item = await db.prompt.create({
  data: { entityId: '<UUID>', name: '<String>', content: '<String>', type: '<String>', model: '<String>', version: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
