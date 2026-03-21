# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Project records

## Usage

```typescript
db.project.findMany({ select: { id: true } }).execute()
db.project.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.project.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', status: '<String>', startDate: '<Datetime>', dueDate: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.project.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.project.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all project records

```typescript
const items = await db.project.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a project

```typescript
const item = await db.project.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', status: '<String>', startDate: '<Datetime>', dueDate: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
