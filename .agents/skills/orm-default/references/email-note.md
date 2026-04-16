# emailNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailNote records

## Usage

```typescript
db.emailNote.findMany({ select: { id: true } }).execute()
db.emailNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailNote.create({ data: { emailId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute()
db.emailNote.update({ where: { id: '<UUID>' }, data: { emailId: '<UUID>' }, select: { id: true } }).execute()
db.emailNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailNote records

```typescript
const items = await db.emailNote.findMany({
  select: { id: true, emailId: true }
}).execute();
```

### Create a emailNote

```typescript
const item = await db.emailNote.create({
  data: { emailId: '<UUID>', noteId: '<UUID>' },
  select: { id: true }
}).execute();
```
