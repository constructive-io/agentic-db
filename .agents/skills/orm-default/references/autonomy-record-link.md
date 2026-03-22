# autonomyRecordLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AutonomyRecordLink records

## Usage

```typescript
db.autonomyRecordLink.findMany({ select: { id: true } }).execute()
db.autonomyRecordLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.autonomyRecordLink.create({ data: { sourceRecordId: '<UUID>', targetRecordId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.autonomyRecordLink.update({ where: { id: '<UUID>' }, data: { sourceRecordId: '<UUID>' }, select: { id: true } }).execute()
db.autonomyRecordLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all autonomyRecordLink records

```typescript
const items = await db.autonomyRecordLink.findMany({
  select: { id: true, sourceRecordId: true }
}).execute();
```

### Create a autonomyRecordLink

```typescript
const item = await db.autonomyRecordLink.create({
  data: { sourceRecordId: '<UUID>', targetRecordId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
