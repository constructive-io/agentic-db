# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Agent records

## Usage

```typescript
db.agent.findMany({ select: { id: true } }).execute()
db.agent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agent.create({ data: { entityId: '<UUID>', name: '<String>', role: '<String>', capabilities: '<JSON>', config: '<JSON>', status: '<String>', persona: '<String>', backstory: '<String>', communicationStyle: '<String>', systemPrompt: '<String>', preferredModel: '<String>', fallbackModels: '<String>', temperature: '<BigFloat>', mood: '<String>', focus: '<String>', lastActiveAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', roleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', personaTrgmSimilarity: '<Float>', backstoryTrgmSimilarity: '<Float>', communicationStyleTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', preferredModelTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', focusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agent records

```typescript
const items = await db.agent.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agent

```typescript
const item = await db.agent.create({
  data: { entityId: '<UUID>', name: '<String>', role: '<String>', capabilities: '<JSON>', config: '<JSON>', status: '<String>', persona: '<String>', backstory: '<String>', communicationStyle: '<String>', systemPrompt: '<String>', preferredModel: '<String>', fallbackModels: '<String>', temperature: '<BigFloat>', mood: '<String>', focus: '<String>', lastActiveAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', roleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', personaTrgmSimilarity: '<Float>', backstoryTrgmSimilarity: '<Float>', communicationStyleTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', preferredModelTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', focusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
