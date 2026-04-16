# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Message records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.message.findMany({ select: { id: true } }).execute()
db.message.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.message.create({ data: { conversationId: '<UUID>', role: '<String>', content: '<String>', tokenCount: '<Int>', meta: '<JSON>', toolCalls: '<JSON>', toolResults: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.message.update({ where: { id: '<UUID>' }, data: { conversationId: '<UUID>' }, select: { id: true } }).execute()
db.message.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all message records

```typescript
const items = await db.message.findMany({
  select: { id: true, conversationId: true }
}).execute();
```

### Create a message

```typescript
const item = await db.message.create({
  data: { conversationId: '<UUID>', role: '<String>', content: '<String>', tokenCount: '<Int>', meta: '<JSON>', toolCalls: '<JSON>', toolResults: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
