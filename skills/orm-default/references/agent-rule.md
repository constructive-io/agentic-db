# agentRule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentRule records

## Usage

```typescript
db.agentRule.findMany({ select: { id: true } }).execute()
db.agentRule.findOne({ id: '<value>', select: { id: true } }).execute()
db.agentRule.create({ data: { agentId: '<value>', ruleId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.agentRule.update({ where: { id: '<value>' }, data: { agentId: '<new>' }, select: { id: true } }).execute()
db.agentRule.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all agentRule records

```typescript
const items = await db.agentRule.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentRule

```typescript
const item = await db.agentRule.create({
  data: { agentId: 'value', ruleId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
