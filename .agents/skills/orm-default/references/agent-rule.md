# agentRule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentRule records

## Usage

```typescript
db.agentRule.findMany({ select: { id: true } }).execute()
db.agentRule.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentRule.create({ data: { agentId: '<UUID>', ruleId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentRule.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute()
db.agentRule.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { agentId: '<UUID>', ruleId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
