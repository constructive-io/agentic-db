# agentLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentLog records

## Usage

```typescript
db.agentLog.findMany({ select: { id: true } }).execute()
db.agentLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentLog.create({ data: { entityId: '<UUID>', agentId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', taskId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentLog records

```typescript
const items = await db.agentLog.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agentLog

```typescript
const item = await db.agentLog.create({
  data: { entityId: '<UUID>', agentId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', taskId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
