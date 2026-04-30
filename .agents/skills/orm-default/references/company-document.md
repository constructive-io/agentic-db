# companyDocument

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyDocument records

## Usage

```typescript
db.companyDocument.findMany({ select: { id: true } }).execute()
db.companyDocument.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyDocument.create({ data: { companyId: '<UUID>', documentId: '<UUID>' }, select: { id: true } }).execute()
db.companyDocument.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute()
db.companyDocument.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyDocument records

```typescript
const items = await db.companyDocument.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyDocument

```typescript
const item = await db.companyDocument.create({
  data: { companyId: '<UUID>', documentId: '<UUID>' },
  select: { id: true }
}).execute();
```
