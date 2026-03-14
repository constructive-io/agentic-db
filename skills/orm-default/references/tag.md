# tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Tag records

## Usage

```typescript
db.tag.findMany({ select: { id: true } }).execute()
db.tag.findOne({ id: '<value>', select: { id: true } }).execute()
db.tag.create({ data: { entityId: '<value>', name: '<value>', color: '<value>', category: '<value>', usageCount: '<value>' }, select: { id: true } }).execute()
db.tag.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.tag.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all tag records

```typescript
const items = await db.tag.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a tag

```typescript
const item = await db.tag.create({
  data: { entityId: 'value', name: 'value', color: 'value', category: 'value', usageCount: 'value' },
  select: { id: true }
}).execute();
```
