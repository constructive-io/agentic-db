# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyLink records

## Usage

```typescript
db.companyLink.findMany({ select: { id: true } }).execute()
db.companyLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.companyLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.companyLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyLink records

```typescript
const items = await db.companyLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a companyLink

```typescript
const item = await db.companyLink.create({
  data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', companyId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
