# tripsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TripsChunk records

## Usage

```typescript
db.tripsChunk.findMany({ select: { id: true } }).execute()
db.tripsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tripsChunk.create({ data: { tripsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.tripsChunk.update({ where: { id: '<UUID>' }, data: { tripsId: '<UUID>' }, select: { id: true } }).execute()
db.tripsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tripsChunk records

```typescript
const items = await db.tripsChunk.findMany({
  select: { id: true, tripsId: true }
}).execute();
```

### Create a tripsChunk

```typescript
const item = await db.tripsChunk.create({
  data: { tripsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
