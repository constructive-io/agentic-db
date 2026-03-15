# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Prompt records

## Usage

```typescript
db.prompt.findMany({ select: { id: true } }).execute()
db.prompt.findOne({ id: '<value>', select: { id: true } }).execute()
db.prompt.create({ data: { entityId: '<value>', name: '<value>', content: '<value>', type: '<value>', model: '<value>', version: '<value>', isActive: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.prompt.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.prompt.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all prompt records

```typescript
const items = await db.prompt.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a prompt

```typescript
const item = await db.prompt.create({
  data: { entityId: 'value', name: 'value', content: 'value', type: 'value', model: 'value', version: 'value', isActive: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
