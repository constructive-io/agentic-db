# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Document records

## Usage

```typescript
db.document.findMany({ select: { id: true } }).execute()
db.document.findOne({ id: '<value>', select: { id: true } }).execute()
db.document.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', content: '<value>', sourceType: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.document.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.document.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all document records

```typescript
const items = await db.document.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a document

```typescript
const item = await db.document.create({
  data: { entityId: 'value', title: 'value', url: 'value', content: 'value', sourceType: 'value', tags: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
