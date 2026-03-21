# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Memory records

## Usage

```typescript
db.memory.findMany({ select: { id: true } }).execute()
db.memory.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.memory.create({ data: { entityId: '<UUID>', content: '<String>', memoryType: '<String>', memoryCategory: '<String>', agentId: '<UUID>', importance: '<Int>', verified: '<Boolean>', source: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', memoryTypeTrgmSimilarity: '<Float>', memoryCategoryTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.memory.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.memory.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all memory records

```typescript
const items = await db.memory.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a memory

```typescript
const item = await db.memory.create({
  data: { entityId: '<UUID>', content: '<String>', memoryType: '<String>', memoryCategory: '<String>', agentId: '<UUID>', importance: '<Int>', verified: '<Boolean>', source: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', memoryTypeTrgmSimilarity: '<Float>', memoryCategoryTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
