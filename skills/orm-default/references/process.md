# process

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Process records

## Usage

```typescript
db.process.findMany({ select: { id: true } }).execute()
db.process.findOne({ id: '<value>', select: { id: true } }).execute()
db.process.create({ data: { entityId: '<value>', pid: '<value>', agentId: '<value>', command: '<value>', startedAt: '<value>', endedAt: '<value>', status: '<value>', exitCode: '<value>', logsPath: '<value>' }, select: { id: true } }).execute()
db.process.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.process.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all process records

```typescript
const items = await db.process.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a process

```typescript
const item = await db.process.create({
  data: { entityId: 'value', pid: 'value', agentId: 'value', command: 'value', startedAt: 'value', endedAt: 'value', status: 'value', exitCode: 'value', logsPath: 'value' },
  select: { id: true }
}).execute();
```
