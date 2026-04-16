# companyMemory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyMemory records

## Usage

```typescript
db.companyMemory.findMany({ select: { id: true } }).execute()
db.companyMemory.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyMemory.create({ data: { companyId: '<UUID>', memoryId: '<UUID>' }, select: { id: true } }).execute()
db.companyMemory.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute()
db.companyMemory.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyMemory records

```typescript
const items = await db.companyMemory.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyMemory

```typescript
const item = await db.companyMemory.create({
  data: { companyId: '<UUID>', memoryId: '<UUID>' },
  select: { id: true }
}).execute();
```
