# agentSkill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentSkill records

## Usage

```typescript
db.agentSkill.findMany({ select: { id: true } }).execute()
db.agentSkill.findOne({ id: '<value>', select: { id: true } }).execute()
db.agentSkill.create({ data: { agentId: '<value>', skillId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.agentSkill.update({ where: { id: '<value>' }, data: { agentId: '<new>' }, select: { id: true } }).execute()
db.agentSkill.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all agentSkill records

```typescript
const items = await db.agentSkill.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentSkill

```typescript
const item = await db.agentSkill.create({
  data: { agentId: 'value', skillId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
