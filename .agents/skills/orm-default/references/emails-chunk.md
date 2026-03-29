# emailsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailsChunk records

## Usage

```typescript
db.emailsChunk.findMany({ select: { id: true } }).execute()
db.emailsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailsChunk.create({ data: { entityId: '<UUID>', emailsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', emailId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.emailsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.emailsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailsChunk records

```typescript
const items = await db.emailsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a emailsChunk

```typescript
const item = await db.emailsChunk.create({
  data: { entityId: '<UUID>', emailsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', emailId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
