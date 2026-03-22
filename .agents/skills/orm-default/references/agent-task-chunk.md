# agentTaskChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentTaskChunk records

## Usage

```typescript
db.agentTaskChunk.findMany({ select: { id: true } }).execute()
db.agentTaskChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentTaskChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentTaskId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentTaskChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentTaskChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentTaskChunk records

```typescript
const items = await db.agentTaskChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agentTaskChunk

```typescript
const item = await db.agentTaskChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentTaskId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
