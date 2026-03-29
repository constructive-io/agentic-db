# dealsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealsChunk records

## Usage

```typescript
db.dealsChunk.findMany({ select: { id: true } }).execute()
db.dealsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.dealsChunk.create({ data: { entityId: '<UUID>', dealsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', dealId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.dealsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.dealsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all dealsChunk records

```typescript
const items = await db.dealsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a dealsChunk

```typescript
const item = await db.dealsChunk.create({
  data: { entityId: '<UUID>', dealsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', dealId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
