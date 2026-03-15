# attachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Attachment records

## Usage

```typescript
db.attachment.findMany({ select: { id: true } }).execute()
db.attachment.findOne({ id: '<value>', select: { id: true } }).execute()
db.attachment.create({ data: { entityId: '<value>', url: '<value>', filename: '<value>', mimeType: '<value>', sizeBytes: '<value>', attachableType: '<value>', attachableId: '<value>', urlTrgmSimilarity: '<value>', filenameTrgmSimilarity: '<value>', mimeTypeTrgmSimilarity: '<value>', attachableTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.attachment.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.attachment.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all attachment records

```typescript
const items = await db.attachment.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a attachment

```typescript
const item = await db.attachment.create({
  data: { entityId: 'value', url: 'value', filename: 'value', mimeType: 'value', sizeBytes: 'value', attachableType: 'value', attachableId: 'value', urlTrgmSimilarity: 'value', filenameTrgmSimilarity: 'value', mimeTypeTrgmSimilarity: 'value', attachableTypeTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
