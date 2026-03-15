# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ActivityLog records

## Usage

```typescript
db.activityLog.findMany({ select: { id: true } }).execute()
db.activityLog.findOne({ id: '<value>', select: { id: true } }).execute()
db.activityLog.create({ data: { entityId: '<value>', actorType: '<value>', actorId: '<value>', action: '<value>', targetType: '<value>', targetId: '<value>', metadata: '<value>', actorTypeTrgmSimilarity: '<value>', actionTrgmSimilarity: '<value>', targetTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.activityLog.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.activityLog.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all activityLog records

```typescript
const items = await db.activityLog.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a activityLog

```typescript
const item = await db.activityLog.create({
  data: { entityId: 'value', actorType: 'value', actorId: 'value', action: 'value', targetType: 'value', targetId: 'value', metadata: 'value', actorTypeTrgmSimilarity: 'value', actionTrgmSimilarity: 'value', targetTypeTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
