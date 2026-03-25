# promptsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for PromptsChunk records

## Usage

```typescript
db.promptsChunk.findMany({ select: { id: true } }).execute()
db.promptsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.promptsChunk.create({ data: { promptsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.promptsChunk.update({ where: { id: '<UUID>' }, data: { promptsId: '<UUID>' }, select: { id: true } }).execute()
db.promptsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all promptsChunk records

```typescript
const items = await db.promptsChunk.findMany({
  select: { id: true, promptsId: true }
}).execute();
```

### Create a promptsChunk

```typescript
const item = await db.promptsChunk.create({
  data: { promptsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
