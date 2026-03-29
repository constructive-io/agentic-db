# toolDefinitionsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolDefinitionsChunk records

## Usage

```typescript
db.toolDefinitionsChunk.findMany({ select: { id: true } }).execute()
db.toolDefinitionsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolDefinitionsChunk.create({ data: { entityId: '<UUID>', toolDefinitionsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', toolDefinitionId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.toolDefinitionsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.toolDefinitionsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolDefinitionsChunk records

```typescript
const items = await db.toolDefinitionsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a toolDefinitionsChunk

```typescript
const item = await db.toolDefinitionsChunk.create({
  data: { entityId: '<UUID>', toolDefinitionsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', toolDefinitionId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
