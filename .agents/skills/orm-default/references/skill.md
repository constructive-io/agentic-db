# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Skill records

## Usage

```typescript
db.skill.findMany({ select: { id: true } }).execute()
db.skill.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skill.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', category: '<String>', implementation: '<String>', config: '<JSON>', isActive: '<Boolean>', intentTrigger: '<String>', intentTriggerEmbedding: '<Vector>', embeddingStale: '<Boolean>', agentId: '<UUID>', intentTriggerEmbeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.skill.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.skill.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all skill records

```typescript
const items = await db.skill.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a skill

```typescript
const item = await db.skill.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', category: '<String>', implementation: '<String>', config: '<JSON>', isActive: '<Boolean>', intentTrigger: '<String>', intentTriggerEmbedding: '<Vector>', embeddingStale: '<Boolean>', agentId: '<UUID>', intentTriggerEmbeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
