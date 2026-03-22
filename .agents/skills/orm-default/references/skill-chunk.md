# skillChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SkillChunk records

## Usage

```typescript
db.skillChunk.findMany({ select: { id: true } }).execute()
db.skillChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skillChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', skillId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.skillChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.skillChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all skillChunk records

```typescript
const items = await db.skillChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a skillChunk

```typescript
const item = await db.skillChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', skillId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
