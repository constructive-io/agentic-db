# rulesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RulesChunk records

## Usage

```typescript
db.rulesChunk.findMany({ select: { id: true } }).execute()
db.rulesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rulesChunk.create({ data: { entityId: '<UUID>', rulesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', ruleId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.rulesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.rulesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rulesChunk records

```typescript
const items = await db.rulesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rulesChunk

```typescript
const item = await db.rulesChunk.create({
  data: { entityId: '<UUID>', rulesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', ruleId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
