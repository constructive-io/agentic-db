# autonomyRecord

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AutonomyRecord records

## Usage

```typescript
db.autonomyRecord.findMany({ select: { id: true } }).execute()
db.autonomyRecord.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.autonomyRecord.create({ data: { entityId: '<UUID>', title: '<String>', recordType: '<String>', content: '<String>', status: '<String>', priority: '<Int>', source: '<String>', context: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.autonomyRecord.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.autonomyRecord.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all autonomyRecord records

```typescript
const items = await db.autonomyRecord.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a autonomyRecord

```typescript
const item = await db.autonomyRecord.create({
  data: { entityId: '<UUID>', title: '<String>', recordType: '<String>', content: '<String>', status: '<String>', priority: '<Int>', source: '<String>', context: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
