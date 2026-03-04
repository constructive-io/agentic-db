# orm-chat

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Chat records

## Usage

```typescript
db.chat.findMany({ select: { id: true } }).execute()
db.chat.findOne({ id: '<value>', select: { id: true } }).execute()
db.chat.create({ data: { entityId: '<value>', title: '<value>', startedAt: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.chat.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.chat.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all chat records

```typescript
const items = await db.chat.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chat

```typescript
const item = await db.chat.create({
  data: { entityId: 'value', title: 'value', startedAt: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
