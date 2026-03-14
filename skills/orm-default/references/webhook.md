# webhook

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Webhook records

## Usage

```typescript
db.webhook.findMany({ select: { id: true } }).execute()
db.webhook.findOne({ id: '<value>', select: { id: true } }).execute()
db.webhook.create({ data: { entityId: '<value>', integrationId: '<value>', url: '<value>', eventType: '<value>', secret: '<value>', isActive: '<value>' }, select: { id: true } }).execute()
db.webhook.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.webhook.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all webhook records

```typescript
const items = await db.webhook.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a webhook

```typescript
const item = await db.webhook.create({
  data: { entityId: 'value', integrationId: 'value', url: 'value', eventType: 'value', secret: 'value', isActive: 'value' },
  select: { id: true }
}).execute();
```
