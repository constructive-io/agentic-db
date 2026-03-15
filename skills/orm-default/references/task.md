# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Task records

## Usage

```typescript
db.task.findMany({ select: { id: true } }).execute()
db.task.findOne({ id: '<value>', select: { id: true } }).execute()
db.task.create({ data: { entityId: '<value>', title: '<value>', description: '<value>', status: '<value>', priority: '<value>', projectId: '<value>', taskType: '<value>', assignedAgentId: '<value>', parentTaskId: '<value>', dueDate: '<value>', completedAt: '<value>', conversationId: '<value>', dependencies: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', taskTypeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.task.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.task.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', title: 'value', description: 'value', status: 'value', priority: 'value', projectId: 'value', taskType: 'value', assignedAgentId: 'value', parentTaskId: 'value', dueDate: 'value', completedAt: 'value', conversationId: 'value', dependencies: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', titleTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', taskTypeTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
