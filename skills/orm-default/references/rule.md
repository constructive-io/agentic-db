# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Rule records

## Usage

```typescript
db.rule.findMany({ select: { id: true } }).execute()
db.rule.findOne({ id: '<value>', select: { id: true } }).execute()
db.rule.create({ data: { entityId: '<value>', title: '<value>', content: '<value>', kind: '<value>', isActive: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.rule.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.rule.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all rule records

```typescript
const items = await db.rule.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rule

```typescript
const item = await db.rule.create({
  data: { entityId: 'value', title: 'value', content: 'value', kind: 'value', isActive: 'value', tags: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
