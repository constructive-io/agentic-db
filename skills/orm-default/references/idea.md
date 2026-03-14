# idea

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Idea records

## Usage

```typescript
db.idea.findMany({ select: { id: true } }).execute()
db.idea.findOne({ id: '<value>', select: { id: true } }).execute()
db.idea.create({ data: { entityId: '<value>', content: '<value>', source: '<value>', status: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.idea.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.idea.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all idea records

```typescript
const items = await db.idea.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a idea

```typescript
const item = await db.idea.create({
  data: { entityId: 'value', content: 'value', source: 'value', status: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
