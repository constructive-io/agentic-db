# toolDefinition

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolDefinition records

## Usage

```typescript
db.toolDefinition.findMany({ select: { id: true } }).execute()
db.toolDefinition.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolDefinition.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', inputSchema: '<JSON>', outputSchema: '<JSON>', implementation: '<String>', isActive: '<Boolean>' }, select: { id: true } }).execute()
db.toolDefinition.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.toolDefinition.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolDefinition records

```typescript
const items = await db.toolDefinition.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a toolDefinition

```typescript
const item = await db.toolDefinition.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', inputSchema: '<JSON>', outputSchema: '<JSON>', implementation: '<String>', isActive: '<Boolean>' },
  select: { id: true }
}).execute();
```
