# listItem

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ListItem records

## Usage

```typescript
db.listItem.findMany({ select: { id: true } }).execute()
db.listItem.findOne({ id: '<value>', select: { id: true } }).execute()
db.listItem.create({ data: { entityId: '<value>', listId: '<value>', content: '<value>', position: '<value>', isChecked: '<value>', refId: '<value>', refType: '<value>', contentTrgmSimilarity: '<value>', refTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.listItem.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.listItem.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all listItem records

```typescript
const items = await db.listItem.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a listItem

```typescript
const item = await db.listItem.create({
  data: { entityId: 'value', listId: 'value', content: 'value', position: 'value', isChecked: 'value', refId: 'value', refType: 'value', contentTrgmSimilarity: 'value', refTypeTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
