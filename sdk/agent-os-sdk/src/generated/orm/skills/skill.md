# orm-skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Skill records

## Usage

```typescript
db.skill.findMany({ select: { id: true } }).execute()
db.skill.findOne({ id: '<value>', select: { id: true } }).execute()
db.skill.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', content: '<value>', isActive: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
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
  data: { entityId: 'value', name: 'value', description: 'value', content: 'value', isActive: 'value', tags: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
