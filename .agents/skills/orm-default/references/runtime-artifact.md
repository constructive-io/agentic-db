# runtimeArtifact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeArtifact records

## Usage

```typescript
db.runtimeArtifact.findMany({ select: { id: true } }).execute()
db.runtimeArtifact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeArtifact.create({ data: { runtimeStateId: '<UUID>', name: '<String>', artifactType: '<String>', content: '<String>', meta: '<JSON>', sizeBytes: '<Int>' }, select: { id: true } }).execute()
db.runtimeArtifact.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeArtifact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeArtifact records

```typescript
const items = await db.runtimeArtifact.findMany({
  select: { id: true, runtimeStateId: true }
}).execute();
```

### Create a runtimeArtifact

```typescript
const item = await db.runtimeArtifact.create({
  data: { runtimeStateId: '<UUID>', name: '<String>', artifactType: '<String>', content: '<String>', meta: '<JSON>', sizeBytes: '<Int>' },
  select: { id: true }
}).execute();
```
