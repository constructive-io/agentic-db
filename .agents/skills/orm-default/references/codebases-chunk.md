# codebasesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CodebasesChunk records

## Usage

```typescript
db.codebasesChunk.findMany({ select: { id: true } }).execute()
db.codebasesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.codebasesChunk.create({ data: { entityId: '<UUID>', codebasesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', codebasisId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.codebasesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.codebasesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all codebasesChunk records

```typescript
const items = await db.codebasesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a codebasesChunk

```typescript
const item = await db.codebasesChunk.create({
  data: { entityId: '<UUID>', codebasesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', codebasisId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
