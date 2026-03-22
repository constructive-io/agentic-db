# agentLogChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentLogChunk records

## Usage

```typescript
db.agentLogChunk.findMany({ select: { id: true } }).execute()
db.agentLogChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentLogChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentLogId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentLogChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentLogChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentLogChunk records

```typescript
const items = await db.agentLogChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agentLogChunk

```typescript
const item = await db.agentLogChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', agentLogId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
