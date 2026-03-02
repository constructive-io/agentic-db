# orm-tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Tag records

## Usage

```typescript
db.tag.findMany({ select: { id: true } }).execute()
db.tag.findOne({ id: '<value>', select: { id: true } }).execute()
db.tag.create({ data: { name: '<value>' }, select: { id: true } }).execute()
db.tag.update({ where: { id: '<value>' }, data: { name: '<new>' }, select: { id: true } }).execute()
db.tag.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all tag records

```typescript
const items = await db.tag.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a tag

```typescript
const item = await db.tag.create({
  data: { name: 'value' },
  select: { id: true }
}).execute();
```
