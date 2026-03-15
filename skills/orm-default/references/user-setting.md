# userSetting

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for UserSetting records

## Usage

```typescript
db.userSetting.findMany({ select: { id: true } }).execute()
db.userSetting.findOne({ id: '<value>', select: { id: true } }).execute()
db.userSetting.create({ data: { entityId: '<value>', key: '<value>', value: '<value>', category: '<value>', keyTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.userSetting.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.userSetting.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all userSetting records

```typescript
const items = await db.userSetting.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a userSetting

```typescript
const item = await db.userSetting.create({
  data: { entityId: 'value', key: 'value', value: 'value', category: 'value', keyTrgmSimilarity: 'value', categoryTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
