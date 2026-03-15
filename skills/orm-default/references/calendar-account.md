# calendarAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarAccount records

## Usage

```typescript
db.calendarAccount.findMany({ select: { id: true } }).execute()
db.calendarAccount.findOne({ id: '<value>', select: { id: true } }).execute()
db.calendarAccount.create({ data: { entityId: '<value>', email: '<value>', provider: '<value>', syncToken: '<value>', lastSyncedAt: '<value>', emailTrgmSimilarity: '<value>', providerTrgmSimilarity: '<value>', syncTokenTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.calendarAccount.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.calendarAccount.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all calendarAccount records

```typescript
const items = await db.calendarAccount.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a calendarAccount

```typescript
const item = await db.calendarAccount.create({
  data: { entityId: 'value', email: 'value', provider: 'value', syncToken: 'value', lastSyncedAt: 'value', emailTrgmSimilarity: 'value', providerTrgmSimilarity: 'value', syncTokenTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
