# toolDefinitionsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolDefinitionsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.toolDefinitionsChunk.findMany({ select: { id: true } }).execute()
db.toolDefinitionsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolDefinitionsChunk.create({ data: { toolDefinitionsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.toolDefinitionsChunk.update({ where: { id: '<UUID>' }, data: { toolDefinitionsId: '<UUID>' }, select: { id: true } }).execute()
db.toolDefinitionsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolDefinitionsChunk records

```typescript
const items = await db.toolDefinitionsChunk.findMany({
  select: { id: true, toolDefinitionsId: true }
}).execute();
```

### Create a toolDefinitionsChunk

```typescript
const item = await db.toolDefinitionsChunk.create({
  data: { toolDefinitionsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
