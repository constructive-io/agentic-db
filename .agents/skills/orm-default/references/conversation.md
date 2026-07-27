# conversation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Conversation records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.conversation.findMany({ select: { id: true } }).execute()
db.conversation.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.conversation.create({ data: { title: '<String>', agentId: '<UUID>', status: '<String>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.conversation.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.conversation.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all conversation records

```typescript
const items = await db.conversation.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a conversation

```typescript
const item = await db.conversation.create({
  data: { title: '<String>', agentId: '<UUID>', status: '<String>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
