# codebaseDependency

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CodebaseDependency records

## Usage

```typescript
db.codebaseDependency.findMany({ select: { id: true } }).execute()
db.codebaseDependency.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.codebaseDependency.create({ data: { codebaseId: '<UUID>', dependencyId: '<UUID>' }, select: { id: true } }).execute()
db.codebaseDependency.update({ where: { id: '<UUID>' }, data: { codebaseId: '<UUID>' }, select: { id: true } }).execute()
db.codebaseDependency.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all codebaseDependency records

```typescript
const items = await db.codebaseDependency.findMany({
  select: { id: true, codebaseId: true }
}).execute();
```

### Create a codebaseDependency

```typescript
const item = await db.codebaseDependency.create({
  data: { codebaseId: '<UUID>', dependencyId: '<UUID>' },
  select: { id: true }
}).execute();
```
