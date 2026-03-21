# noteChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for NoteChunk records

## Usage

```typescript
db.noteChunk.findMany({ select: { id: true } }).execute()
db.noteChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.noteChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', noteId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.noteChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.noteChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all noteChunk records

```typescript
const items = await db.noteChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a noteChunk

```typescript
const item = await db.noteChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', noteId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
