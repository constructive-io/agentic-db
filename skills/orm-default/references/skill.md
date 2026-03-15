# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Skill records

## Usage

```typescript
db.skill.findMany({ select: { id: true } }).execute()
db.skill.findOne({ id: '<value>', select: { id: true } }).execute()
db.skill.create({ data: { entityId: '<value>', name: '<value>', slug: '<value>', description: '<value>', content: '<value>', procedure: '<value>', interface: '<value>', requirements: '<value>', prerequisites: '<value>', alwaysLoad: '<value>', filePath: '<value>', contentHash: '<value>', category: '<value>', isActive: '<value>', abstract: '<value>', overview: '<value>', activeCount: '<value>', lastAccessedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', intentTrigger: '<value>', nameTrgmSimilarity: '<value>', slugTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', contentTrgmSimilarity: '<value>', procedureTrgmSimilarity: '<value>', filePathTrgmSimilarity: '<value>', contentHashTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', abstractTrgmSimilarity: '<value>', overviewTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', intentTriggerVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.skill.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.skill.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', slug: 'value', description: 'value', content: 'value', procedure: 'value', interface: 'value', requirements: 'value', prerequisites: 'value', alwaysLoad: 'value', filePath: 'value', contentHash: 'value', category: 'value', isActive: 'value', abstract: 'value', overview: 'value', activeCount: 'value', lastAccessedAt: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', intentTrigger: 'value', nameTrgmSimilarity: 'value', slugTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', contentTrgmSimilarity: 'value', procedureTrgmSimilarity: 'value', filePathTrgmSimilarity: 'value', contentHashTrgmSimilarity: 'value', categoryTrgmSimilarity: 'value', abstractTrgmSimilarity: 'value', overviewTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', intentTriggerVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
