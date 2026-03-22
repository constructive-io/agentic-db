# agentChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentChunk records

## Usage

```typescript
db.agentChunk.findMany({ select: { id: true } }).execute()
db.agentChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentChunk records

```typescript
const items = await db.agentChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agentChunk

```typescript
const item = await db.agentChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
