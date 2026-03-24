# skillTool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SkillTool records

## Usage

```typescript
db.skillTool.findMany({ select: { id: true } }).execute()
db.skillTool.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skillTool.create({ data: { skillId: '<UUID>', toolDefinitionId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.skillTool.update({ where: { id: '<UUID>' }, data: { skillId: '<UUID>' }, select: { id: true } }).execute()
db.skillTool.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all skillTool records

```typescript
const items = await db.skillTool.findMany({
  select: { id: true, skillId: true }
}).execute();
```

### Create a skillTool

```typescript
const item = await db.skillTool.create({
  data: { skillId: '<UUID>', toolDefinitionId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
