# toolExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolExecution records

## Usage

```typescript
db.toolExecution.findMany({ select: { id: true } }).execute()
db.toolExecution.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolExecution.create({ data: { toolDefinitionId: '<UUID>', messageId: '<UUID>', input: '<JSON>', output: '<JSON>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', error: '<String>' }, select: { id: true } }).execute()
db.toolExecution.update({ where: { id: '<UUID>' }, data: { toolDefinitionId: '<UUID>' }, select: { id: true } }).execute()
db.toolExecution.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolExecution records

```typescript
const items = await db.toolExecution.findMany({
  select: { id: true, toolDefinitionId: true }
}).execute();
```

### Create a toolExecution

```typescript
const item = await db.toolExecution.create({
  data: { toolDefinitionId: '<UUID>', messageId: '<UUID>', input: '<JSON>', output: '<JSON>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', error: '<String>' },
  select: { id: true }
}).execute();
```
