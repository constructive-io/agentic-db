# projectsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ProjectsChunk records

## Usage

```typescript
db.projectsChunk.findMany({ select: { id: true } }).execute()
db.projectsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.projectsChunk.create({ data: { projectsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.projectsChunk.update({ where: { id: '<UUID>' }, data: { projectsId: '<UUID>' }, select: { id: true } }).execute()
db.projectsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all projectsChunk records

```typescript
const items = await db.projectsChunk.findMany({
  select: { id: true, projectsId: true }
}).execute();
```

### Create a projectsChunk

```typescript
const item = await db.projectsChunk.create({
  data: { projectsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
