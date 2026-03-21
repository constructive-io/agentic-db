# emailAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailAccount records

## Usage

```typescript
db.emailAccount.findMany({ select: { id: true } }).execute()
db.emailAccount.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailAccount.create({ data: { entityId: '<UUID>', email: '<String>', provider: '<String>', syncState: '<JSON>' }, select: { id: true } }).execute()
db.emailAccount.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.emailAccount.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailAccount records

```typescript
const items = await db.emailAccount.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a emailAccount

```typescript
const item = await db.emailAccount.create({
  data: { entityId: '<UUID>', email: '<String>', provider: '<String>', syncState: '<JSON>' },
  select: { id: true }
}).execute();
```
