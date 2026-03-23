# skillsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SkillsChunk records

## Usage

```typescript
db.skillsChunk.findMany({ select: { id: true } }).execute()
db.skillsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skillsChunk.create({ data: { skillsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.skillsChunk.update({ where: { id: '<UUID>' }, data: { skillsId: '<UUID>' }, select: { id: true } }).execute()
db.skillsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all skillsChunk records

```typescript
const items = await db.skillsChunk.findMany({
  select: { id: true, skillsId: true }
}).execute();
```

### Create a skillsChunk

```typescript
const item = await db.skillsChunk.create({
  data: { skillsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
