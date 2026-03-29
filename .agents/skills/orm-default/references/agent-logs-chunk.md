# agentLogsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentLogsChunk records

## Usage

```typescript
db.agentLogsChunk.findMany({ select: { id: true } }).execute()
db.agentLogsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentLogsChunk.create({ data: { agentLogsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentLogsChunk.update({ where: { id: '<UUID>' }, data: { agentLogsId: '<UUID>' }, select: { id: true } }).execute()
db.agentLogsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentLogsChunk records

```typescript
const items = await db.agentLogsChunk.findMany({
  select: { id: true, agentLogsId: true }
}).execute();
```

### Create a agentLogsChunk

```typescript
const item = await db.agentLogsChunk.create({
  data: { agentLogsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
