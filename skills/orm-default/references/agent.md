# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Agent records

## Usage

```typescript
db.agent.findMany({ select: { id: true } }).execute()
db.agent.findOne({ id: '<value>', select: { id: true } }).execute()
db.agent.create({ data: { entityId: '<value>', name: '<value>', role: '<value>', capabilities: '<value>', config: '<value>', status: '<value>', persona: '<value>', backstory: '<value>', communicationStyle: '<value>', systemPrompt: '<value>', preferredModel: '<value>', fallbackModels: '<value>', temperature: '<value>', mood: '<value>', focus: '<value>', lastActiveAt: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.agent.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.agent.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', role: 'value', capabilities: 'value', config: 'value', status: 'value', persona: 'value', backstory: 'value', communicationStyle: 'value', systemPrompt: 'value', preferredModel: 'value', fallbackModels: 'value', temperature: 'value', mood: 'value', focus: 'value', lastActiveAt: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
