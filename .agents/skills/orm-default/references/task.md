# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Task records

## Usage

```typescript
db.task.findMany({ select: { id: true } }).execute()
db.task.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.task.create({ data: { entityId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', projectId: '<UUID>', taskType: '<String>', assignedAgentId: '<UUID>', parentTaskId: '<UUID>', dueDate: '<Datetime>', completedAt: '<Datetime>', conversationId: '<UUID>', dependencies: '<UUID>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', taskTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.task.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.task.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all task records

```typescript
const items = await db.task.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a task

```typescript
const item = await db.task.create({
  data: { entityId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', projectId: '<UUID>', taskType: '<String>', assignedAgentId: '<UUID>', parentTaskId: '<UUID>', dueDate: '<Datetime>', completedAt: '<Datetime>', conversationId: '<UUID>', dependencies: '<UUID>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', taskTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
