# threadParticipant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ThreadParticipant records

## Usage

```typescript
db.threadParticipant.findMany({ select: { id: true } }).execute()
db.threadParticipant.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.threadParticipant.create({ data: { emailThreadId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.threadParticipant.update({ where: { id: '<UUID>' }, data: { emailThreadId: '<UUID>' }, select: { id: true } }).execute()
db.threadParticipant.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all threadParticipant records

```typescript
const items = await db.threadParticipant.findMany({
  select: { id: true, emailThreadId: true }
}).execute();
```

### Create a threadParticipant

```typescript
const item = await db.threadParticipant.create({
  data: { emailThreadId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
