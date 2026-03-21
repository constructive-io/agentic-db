# webhook

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Webhook records

## Usage

```typescript
db.webhook.findMany({ select: { id: true } }).execute()
db.webhook.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.webhook.create({ data: { entityId: '<UUID>', integrationId: '<UUID>', url: '<String>', eventType: '<String>', secret: '<String>', isActive: '<Boolean>' }, select: { id: true } }).execute()
db.webhook.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.webhook.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', integrationId: '<UUID>', url: '<String>', eventType: '<String>', secret: '<String>', isActive: '<Boolean>' },
  select: { id: true }
}).execute();
```
