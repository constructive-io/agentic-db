# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ScheduledJob records

## Usage

```typescript
db.scheduledJob.findMany({ select: { id: true } }).execute()
db.scheduledJob.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.scheduledJob.create({ data: { entityId: '<UUID>', name: '<String>', scheduleType: '<String>', scheduleExpr: '<String>', runAt: '<Datetime>', command: '<String>', message: '<String>', agentId: '<UUID>', sessionId: '<UUID>', isActive: '<Boolean>', deleteAfterRun: '<Boolean>', lastRunAt: '<Datetime>', nextRunAt: '<Datetime>', runCount: '<Int>', lastResult: '<JSON>' }, select: { id: true } }).execute()
db.scheduledJob.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.scheduledJob.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', name: '<String>', scheduleType: '<String>', scheduleExpr: '<String>', runAt: '<Datetime>', command: '<String>', message: '<String>', agentId: '<UUID>', sessionId: '<UUID>', isActive: '<Boolean>', deleteAfterRun: '<Boolean>', lastRunAt: '<Datetime>', nextRunAt: '<Datetime>', runCount: '<Int>', lastResult: '<JSON>' },
  select: { id: true }
}).execute();
```
