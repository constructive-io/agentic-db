# emailAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailAccount records

## Usage

```typescript
db.emailAccount.findMany({ select: { id: true } }).execute()
db.emailAccount.findOne({ id: '<value>', select: { id: true } }).execute()
db.emailAccount.create({ data: { entityId: '<value>', email: '<value>', provider: '<value>', syncState: '<value>', emailTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.emailAccount.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.emailAccount.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', email: 'value', provider: 'value', syncState: 'value', emailTrgmSimilarity: 'value', providerTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
