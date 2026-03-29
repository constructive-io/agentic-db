# activityLogsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ActivityLogsChunk records

## Usage

```typescript
db.activityLogsChunk.findMany({ select: { id: true } }).execute()
db.activityLogsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.activityLogsChunk.create({ data: { entityId: '<UUID>', activityLogsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', activityLogId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.activityLogsChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.activityLogsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all activityLogsChunk records

```typescript
const items = await db.activityLogsChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a activityLogsChunk

```typescript
const item = await db.activityLogsChunk.create({
  data: { entityId: '<UUID>', activityLogsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', activityLogId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
