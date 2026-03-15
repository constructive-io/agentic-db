# tool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Tool records

## Usage

```typescript
db.tool.findMany({ select: { id: true } }).execute()
db.tool.findOne({ id: '<value>', select: { id: true } }).execute()
db.tool.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', type: '<value>', inputSchema: '<value>', outputSchema: '<value>', endpoint: '<value>', authMethod: '<value>', isActive: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', endpointTrgmSimilarity: '<value>', authMethodTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.tool.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.tool.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all tool records

```typescript
const items = await db.tool.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a tool

```typescript
const item = await db.tool.create({
  data: { entityId: 'value', name: 'value', description: 'value', type: 'value', inputSchema: 'value', outputSchema: 'value', endpoint: 'value', authMethod: 'value', isActive: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', nameTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', typeTrgmSimilarity: 'value', endpointTrgmSimilarity: 'value', authMethodTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
