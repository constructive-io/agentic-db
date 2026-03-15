# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Memory records

## Usage

```typescript
db.memory.findMany({ select: { id: true } }).execute()
db.memory.findOne({ id: '<value>', select: { id: true } }).execute()
db.memory.create({ data: { entityId: '<value>', content: '<value>', memoryType: '<value>', memoryCategory: '<value>', agentId: '<value>', importance: '<value>', verified: '<value>', source: '<value>', relatedEntityType: '<value>', relatedEntityId: '<value>', abstract: '<value>', overview: '<value>', activeCount: '<value>', lastAccessedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingTextBm25Score: '<value>', contentTrgmSimilarity: '<value>', memoryTypeTrgmSimilarity: '<value>', memoryCategoryTrgmSimilarity: '<value>', sourceTrgmSimilarity: '<value>', relatedEntityTypeTrgmSimilarity: '<value>', abstractTrgmSimilarity: '<value>', overviewTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.memory.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.memory.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', content: 'value', memoryType: 'value', memoryCategory: 'value', agentId: 'value', importance: 'value', verified: 'value', source: 'value', relatedEntityType: 'value', relatedEntityId: 'value', abstract: 'value', overview: 'value', activeCount: 'value', lastAccessedAt: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingTextBm25Score: 'value', contentTrgmSimilarity: 'value', memoryTypeTrgmSimilarity: 'value', memoryCategoryTrgmSimilarity: 'value', sourceTrgmSimilarity: 'value', relatedEntityTypeTrgmSimilarity: 'value', abstractTrgmSimilarity: 'value', overviewTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
