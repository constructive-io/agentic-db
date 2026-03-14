# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ScheduledJob records

## Usage

```typescript
db.scheduledJob.findMany({ select: { id: true } }).execute()
db.scheduledJob.findOne({ id: '<value>', select: { id: true } }).execute()
db.scheduledJob.create({ data: { entityId: '<value>', name: '<value>', schedule: '<value>', command: '<value>', agentId: '<value>', active: '<value>', lastRun: '<value>', nextRun: '<value>' }, select: { id: true } }).execute()
db.scheduledJob.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.scheduledJob.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all scheduledJob records

```typescript
const items = await db.scheduledJob.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a scheduledJob

```typescript
const item = await db.scheduledJob.create({
  data: { entityId: 'value', name: 'value', schedule: 'value', command: 'value', agentId: 'value', active: 'value', lastRun: 'value', nextRun: 'value' },
  select: { id: true }
}).execute();
```
