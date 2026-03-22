# process

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Process records

## Usage

```typescript
db.process.findMany({ select: { id: true } }).execute()
db.process.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.process.create({ data: { entityId: '<UUID>', pid: '<Int>', agentId: '<UUID>', command: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', exitCode: '<Int>', logsPath: '<String>' }, select: { id: true } }).execute()
db.process.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.process.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', pid: '<Int>', agentId: '<UUID>', command: '<String>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', exitCode: '<Int>', logsPath: '<String>' },
  select: { id: true }
}).execute();
```
