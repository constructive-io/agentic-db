# agentTask

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentTask records

## Usage

```typescript
db.agentTask.findMany({ select: { id: true } }).execute()
db.agentTask.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentTask.create({ data: { entityId: '<UUID>', agentId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', result: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', resultTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentTask.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentTask.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentTask records

```typescript
const items = await db.agentTask.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agentTask

```typescript
const item = await db.agentTask.create({
  data: { entityId: '<UUID>', agentId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', result: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', resultTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
