# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Skill records

## Usage

```typescript
db.skill.findMany({ select: { id: true } }).execute()
db.skill.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skill.create({ data: { entityId: '<UUID>', name: '<String>', slug: '<String>', description: '<String>', content: '<String>', procedure: '<String>', interface: '<JSON>', requirements: '<JSON>', prerequisites: '<JSON>', alwaysLoad: '<Boolean>', filePath: '<String>', contentHash: '<String>', category: '<String>', isActive: '<Boolean>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', intentTrigger: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', slugTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', procedureTrgmSimilarity: '<Float>', filePathTrgmSimilarity: '<Float>', contentHashTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
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
  data: { entityId: '<UUID>', name: '<String>', slug: '<String>', description: '<String>', content: '<String>', procedure: '<String>', interface: '<JSON>', requirements: '<JSON>', prerequisites: '<JSON>', alwaysLoad: '<Boolean>', filePath: '<String>', contentHash: '<String>', category: '<String>', isActive: '<Boolean>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', intentTrigger: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', slugTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', procedureTrgmSimilarity: '<Float>', filePathTrgmSimilarity: '<Float>', contentHashTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
