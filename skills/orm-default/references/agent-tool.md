# agentTool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentTool records

## Usage

```typescript
db.agentTool.findMany({ select: { id: true } }).execute()
db.agentTool.findOne({ id: '<value>', select: { id: true } }).execute()
db.agentTool.create({ data: { agentId: '<value>', toolId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.agentTool.update({ where: { id: '<value>' }, data: { agentId: '<new>' }, select: { id: true } }).execute()
db.agentTool.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all agentTool records

```typescript
const items = await db.agentTool.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentTool

```typescript
const item = await db.agentTool.create({
  data: { agentId: 'value', toolId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
