# agentPrompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentPrompt records

## Usage

```typescript
db.agentPrompt.findMany({ select: { id: true } }).execute()
db.agentPrompt.findOne({ id: '<value>', select: { id: true } }).execute()
db.agentPrompt.create({ data: { agentId: '<value>', promptId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.agentPrompt.update({ where: { id: '<value>' }, data: { agentId: '<new>' }, select: { id: true } }).execute()
db.agentPrompt.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all agentPrompt records

```typescript
const items = await db.agentPrompt.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentPrompt

```typescript
const item = await db.agentPrompt.create({
  data: { agentId: 'value', promptId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
