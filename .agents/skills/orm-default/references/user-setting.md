# userSetting

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for UserSetting records

## Usage

```typescript
db.userSetting.findMany({ select: { id: true } }).execute()
db.userSetting.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.userSetting.create({ data: { entityId: '<UUID>', key: '<String>', value: '<JSON>', category: '<String>' }, select: { id: true } }).execute()
db.userSetting.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.userSetting.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', key: '<String>', value: '<JSON>', category: '<String>' },
  select: { id: true }
}).execute();
```
