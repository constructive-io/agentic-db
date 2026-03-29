# notesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for NotesChunk records

## Usage

```typescript
db.notesChunk.findMany({ select: { id: true } }).execute()
db.notesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.notesChunk.create({ data: { entityId: '<UUID>', notesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', noteId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.notesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.notesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all notesChunk records

```typescript
const items = await db.notesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a notesChunk

```typescript
const item = await db.notesChunk.create({
  data: { entityId: '<UUID>', notesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', noteId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
