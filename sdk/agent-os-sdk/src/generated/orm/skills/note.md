# orm-note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Note records

## Usage

```typescript
db.note.findMany({ select: { id: true } }).execute()
db.note.findOne({ id: '<value>', select: { id: true } }).execute()
db.note.create({ data: { entityId: '<value>', content: '<value>', tags: '<value>', embedding: '<value>', contactId: '<value>', embeddingDistance: '<value>', bm25ContentScore: '<value>' }, select: { id: true } }).execute()
db.note.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.note.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all note records

```typescript
const items = await db.note.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a note

```typescript
const item = await db.note.create({
  data: { entityId: 'value', content: 'value', tags: 'value', embedding: 'value', contactId: 'value', embeddingDistance: 'value', bm25ContentScore: 'value' },
  select: { id: true }
}).execute();
```
