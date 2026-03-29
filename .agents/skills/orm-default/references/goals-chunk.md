# goalsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for GoalsChunk records

## Usage

```typescript
db.goalsChunk.findMany({ select: { id: true } }).execute()
db.goalsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.goalsChunk.create({ data: { entityId: '<UUID>', goalsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', goalId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.goalsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.goalsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all goalsChunk records

```typescript
const items = await db.goalsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a goalsChunk

```typescript
const item = await db.goalsChunk.create({
  data: { entityId: '<UUID>', goalsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', goalId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
