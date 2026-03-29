# companiesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompaniesChunk records

## Usage

```typescript
db.companiesChunk.findMany({ select: { id: true } }).execute()
db.companiesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companiesChunk.create({ data: { companiesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.companiesChunk.update({ where: { id: '<UUID>' }, data: { companiesId: '<UUID>' }, select: { id: true } }).execute()
db.companiesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companiesChunk records

```typescript
const items = await db.companiesChunk.findMany({
  select: { id: true, companiesId: true }
}).execute();
```

### Create a companiesChunk

```typescript
const item = await db.companiesChunk.create({
  data: { companiesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
