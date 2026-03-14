# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Chunk records

## Usage

```typescript
db.chunk.findMany({ select: { id: true } }).execute()
db.chunk.findOne({ id: '<value>', select: { id: true } }).execute()
db.chunk.create({ data: { entityId: '<value>', fileId: '<value>', repositoryId: '<value>', content: '<value>', startLine: '<value>', endLine: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.chunk.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.chunk.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all chunk records

```typescript
const items = await db.chunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chunk

```typescript
const item = await db.chunk.create({
  data: { entityId: 'value', fileId: 'value', repositoryId: 'value', content: 'value', startLine: 'value', endLine: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
