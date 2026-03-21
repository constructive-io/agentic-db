# ruleChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuleChunk records

## Usage

```typescript
db.ruleChunk.findMany({ select: { id: true } }).execute()
db.ruleChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.ruleChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', ruleId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.ruleChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.ruleChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all ruleChunk records

```typescript
const items = await db.ruleChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a ruleChunk

```typescript
const item = await db.ruleChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', ruleId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
