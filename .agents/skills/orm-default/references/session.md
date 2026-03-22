# session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Session records

## Usage

```typescript
db.session.findMany({ select: { id: true } }).execute()
db.session.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.session.create({ data: { entityId: '<UUID>', title: '<String>', agentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', contextSummary: '<String>', sessionSummary: '<String>', archivedMessages: '<JSON>', compressionCount: '<Int>', archivedAt: '<Datetime>', extractedMemoryIds: '<UUID>', contextsUsed: '<JSON>', skillsUsed: '<UUID>', embeddingText: '<String>', embedding: '<Vector>' }, select: { id: true } }).execute()
db.session.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.session.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all session records

```typescript
const items = await db.session.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a session

```typescript
const item = await db.session.create({
  data: { entityId: '<UUID>', title: '<String>', agentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', status: '<String>', contextSummary: '<String>', sessionSummary: '<String>', archivedMessages: '<JSON>', compressionCount: '<Int>', archivedAt: '<Datetime>', extractedMemoryIds: '<UUID>', contextsUsed: '<JSON>', skillsUsed: '<UUID>', embeddingText: '<String>', embedding: '<Vector>' },
  select: { id: true }
}).execute();
```
