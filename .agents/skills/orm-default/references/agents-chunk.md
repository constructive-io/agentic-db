# agentsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentsChunk records

## Usage

```typescript
db.agentsChunk.findMany({ select: { id: true } }).execute()
db.agentsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentsChunk.create({ data: { agentsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agentsChunk.update({ where: { id: '<UUID>' }, data: { agentsId: '<UUID>' }, select: { id: true } }).execute()
db.agentsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentsChunk records

```typescript
const items = await db.agentsChunk.findMany({
  select: { id: true, agentsId: true }
}).execute();
```

### Create a agentsChunk

```typescript
const item = await db.agentsChunk.create({
  data: { agentsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
