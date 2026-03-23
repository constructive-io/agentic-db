# habitsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HabitsChunk records

## Usage

```typescript
db.habitsChunk.findMany({ select: { id: true } }).execute()
db.habitsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.habitsChunk.create({ data: { habitsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.habitsChunk.update({ where: { id: '<UUID>' }, data: { habitsId: '<UUID>' }, select: { id: true } }).execute()
db.habitsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all habitsChunk records

```typescript
const items = await db.habitsChunk.findMany({
  select: { id: true, habitsId: true }
}).execute();
```

### Create a habitsChunk

```typescript
const item = await db.habitsChunk.create({
  data: { habitsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
