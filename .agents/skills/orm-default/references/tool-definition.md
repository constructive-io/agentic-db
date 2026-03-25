# toolDefinition

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolDefinition records

## Usage

```typescript
db.toolDefinition.findMany({ select: { id: true } }).execute()
db.toolDefinition.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolDefinition.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', toolType: '<String>', schema: '<JSON>', config: '<JSON>', isActive: '<Boolean>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', toolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.toolDefinition.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.toolDefinition.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolDefinition records

```typescript
const items = await db.toolDefinition.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a toolDefinition

```typescript
const item = await db.toolDefinition.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', toolType: '<String>', schema: '<JSON>', config: '<JSON>', isActive: '<Boolean>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', toolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
