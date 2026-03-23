# agentTasksChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentTasksChunk records

## Usage

```typescript
db.agentTasksChunk.findMany({ select: { id: true } }).execute()
db.agentTasksChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentTasksChunk.create({ data: { agentTasksId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentTasksChunk.update({ where: { id: '<UUID>' }, data: { agentTasksId: '<UUID>' }, select: { id: true } }).execute()
db.agentTasksChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentTasksChunk records

```typescript
const items = await db.agentTasksChunk.findMany({
  select: { id: true, agentTasksId: true }
}).execute();
```

### Create a agentTasksChunk

```typescript
const item = await db.agentTasksChunk.create({
  data: { agentTasksId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
