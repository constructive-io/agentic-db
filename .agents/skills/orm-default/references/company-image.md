# companyImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyImage records

## Usage

```typescript
db.companyImage.findMany({ select: { id: true } }).execute()
db.companyImage.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyImage.create({ data: { companyId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute()
db.companyImage.update({ where: { id: '<UUID>' }, data: { companyId: '<UUID>' }, select: { id: true } }).execute()
db.companyImage.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyImage records

```typescript
const items = await db.companyImage.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyImage

```typescript
const item = await db.companyImage.create({
  data: { companyId: '<UUID>', imageId: '<UUID>' },
  select: { id: true }
}).execute();
```
