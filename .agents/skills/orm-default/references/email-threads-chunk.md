# emailThreadsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailThreadsChunk records

## Usage

```typescript
db.emailThreadsChunk.findMany({ select: { id: true } }).execute()
db.emailThreadsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailThreadsChunk.create({ data: { emailThreadsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.emailThreadsChunk.update({ where: { id: '<UUID>' }, data: { emailThreadsId: '<UUID>' }, select: { id: true } }).execute()
db.emailThreadsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailThreadsChunk records

```typescript
const items = await db.emailThreadsChunk.findMany({
  select: { id: true, emailThreadsId: true }
}).execute();
```

### Create a emailThreadsChunk

```typescript
const item = await db.emailThreadsChunk.create({
  data: { emailThreadsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
