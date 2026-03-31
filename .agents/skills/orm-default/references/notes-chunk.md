# notesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for NotesChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.notesChunk.findMany({ select: { id: true } }).execute()
db.notesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.notesChunk.create({ data: { notesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.notesChunk.update({ where: { id: '<UUID>' }, data: { notesId: '<UUID>' }, select: { id: true } }).execute()
db.notesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all notesChunk records

```typescript
const items = await db.notesChunk.findMany({
  select: { id: true, notesId: true }
}).execute();
```

### Create a notesChunk

```typescript
const item = await db.notesChunk.create({
  data: { notesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
