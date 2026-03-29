# autonomyRecordsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AutonomyRecordsChunk records

## Usage

```typescript
db.autonomyRecordsChunk.findMany({ select: { id: true } }).execute()
db.autonomyRecordsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.autonomyRecordsChunk.create({ data: { autonomyRecordsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.autonomyRecordsChunk.update({ where: { id: '<UUID>' }, data: { autonomyRecordsId: '<UUID>' }, select: { id: true } }).execute()
db.autonomyRecordsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all autonomyRecordsChunk records

```typescript
const items = await db.autonomyRecordsChunk.findMany({
  select: { id: true, autonomyRecordsId: true }
}).execute();
```

### Create a autonomyRecordsChunk

```typescript
const item = await db.autonomyRecordsChunk.create({
  data: { autonomyRecordsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
