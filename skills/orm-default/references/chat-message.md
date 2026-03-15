# chatMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ChatMessage records

## Usage

```typescript
db.chatMessage.findMany({ select: { id: true } }).execute()
db.chatMessage.findOne({ id: '<value>', select: { id: true } }).execute()
db.chatMessage.create({ data: { entityId: '<value>', chatId: '<value>', threadId: '<value>', role: '<value>', content: '<value>', toolCalls: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.chatMessage.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.chatMessage.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all chatMessage records

```typescript
const items = await db.chatMessage.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chatMessage

```typescript
const item = await db.chatMessage.create({
  data: { entityId: 'value', chatId: 'value', threadId: 'value', role: 'value', content: 'value', toolCalls: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
