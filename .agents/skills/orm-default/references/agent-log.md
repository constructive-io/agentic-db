# agentLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentLog records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.agentLog.findMany({ select: { id: true } }).execute()
db.agentLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentLog.create({ data: { agentId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', taskId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentLog.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute()
db.agentLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentLog records

```typescript
const items = await db.agentLog.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentLog

```typescript
const item = await db.agentLog.create({
  data: { agentId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', taskId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
