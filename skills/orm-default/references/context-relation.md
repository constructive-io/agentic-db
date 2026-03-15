# contextRelation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContextRelation records

## Usage

```typescript
db.contextRelation.findMany({ select: { id: true } }).execute()
db.contextRelation.findOne({ id: '<value>', select: { id: true } }).execute()
db.contextRelation.create({ data: { entityId: '<value>', fromType: '<value>', fromId: '<value>', toType: '<value>', toId: '<value>', relationKind: '<value>', reason: '<value>', strength: '<value>', fromTypeTrgmSimilarity: '<value>', toTypeTrgmSimilarity: '<value>', relationKindTrgmSimilarity: '<value>', reasonTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.contextRelation.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.contextRelation.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all contextRelation records

```typescript
const items = await db.contextRelation.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contextRelation

```typescript
const item = await db.contextRelation.create({
  data: { entityId: 'value', fromType: 'value', fromId: 'value', toType: 'value', toId: 'value', relationKind: 'value', reason: 'value', strength: 'value', fromTypeTrgmSimilarity: 'value', toTypeTrgmSimilarity: 'value', relationKindTrgmSimilarity: 'value', reasonTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
