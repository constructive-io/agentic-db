# skillsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SkillsChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

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
