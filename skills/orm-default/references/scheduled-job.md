# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ScheduledJob records

## Usage

```typescript
db.scheduledJob.findMany({ select: { id: true } }).execute()
db.scheduledJob.findOne({ id: '<value>', select: { id: true } }).execute()
db.scheduledJob.create({ data: { entityId: '<value>', name: '<value>', scheduleType: '<value>', scheduleExpr: '<value>', runAt: '<value>', command: '<value>', message: '<value>', agentId: '<value>', sessionId: '<value>', isActive: '<value>', deleteAfterRun: '<value>', lastRunAt: '<value>', nextRunAt: '<value>', runCount: '<value>', lastResult: '<value>', nameTrgmSimilarity: '<value>', scheduleTypeTrgmSimilarity: '<value>', scheduleExprTrgmSimilarity: '<value>', commandTrgmSimilarity: '<value>', messageTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
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
  data: { entityId: 'value', name: 'value', scheduleType: 'value', scheduleExpr: 'value', runAt: 'value', command: 'value', message: 'value', agentId: 'value', sessionId: 'value', isActive: 'value', deleteAfterRun: 'value', lastRunAt: 'value', nextRunAt: 'value', runCount: 'value', lastResult: 'value', nameTrgmSimilarity: 'value', scheduleTypeTrgmSimilarity: 'value', scheduleExprTrgmSimilarity: 'value', commandTrgmSimilarity: 'value', messageTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
