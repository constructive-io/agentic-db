# notification

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Notification records

## Usage

```typescript
db.notification.findMany({ select: { id: true } }).execute()
db.notification.findOne({ id: '<value>', select: { id: true } }).execute()
db.notification.create({ data: { entityId: '<value>', title: '<value>', body: '<value>', type: '<value>', priority: '<value>', readAt: '<value>', actionUrl: '<value>', sourceEntityId: '<value>', sourceEntityType: '<value>', titleTrgmSimilarity: '<value>', bodyTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', priorityTrgmSimilarity: '<value>', actionUrlTrgmSimilarity: '<value>', sourceEntityTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.notification.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.notification.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all notification records

```typescript
const items = await db.notification.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a notification

```typescript
const item = await db.notification.create({
  data: { entityId: 'value', title: 'value', body: 'value', type: 'value', priority: 'value', readAt: 'value', actionUrl: 'value', sourceEntityId: 'value', sourceEntityType: 'value', titleTrgmSimilarity: 'value', bodyTrgmSimilarity: 'value', typeTrgmSimilarity: 'value', priorityTrgmSimilarity: 'value', actionUrlTrgmSimilarity: 'value', sourceEntityTypeTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
