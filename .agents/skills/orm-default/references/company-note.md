# companyNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyNote records

## Usage

```typescript
db.companyNote.findMany({ select: { id: true } }).execute()
db.companyNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyNote.create({ data: { companyId: '<UUID>', noteId: '<UUID>' }, select: { id: true } }).execute()
db.companyNote.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute()
db.companyNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyNote records

```typescript
const items = await db.companyNote.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyNote

```typescript
const item = await db.companyNote.create({
  data: { companyId: '<UUID>', noteId: '<UUID>' },
  select: { id: true }
}).execute();
```
