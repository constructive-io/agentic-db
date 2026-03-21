---
name: agentic-db-blueprint-provision
description: Authoring and provisioning declarative blueprint definitions for agentic-db schemas. Covers table definitions, relations, indexes, full-text search, chunk tables, and the 4-phase provision engine.
---

# Blueprint Provision

How to author and provision schema blueprints for agentic-db. Each schema module exports a `BlueprintDefinition` that the provision engine processes in 4 phases.

## Architecture

```
packages/provision/src/
├── blueprint.ts          # Types, helpers, and provision engine
├── config.ts             # Environment configuration
├── helpers.ts            # SDK client factory, retry logic
├── create-db.ts          # Database creation script
├── provision.ts          # Orchestrator (runs all schema modules)
└── schemas/
    ├── crm.ts            # CRM schema (contacts, companies, deals, ...)
    ├── agent.ts          # Agent Core (agents, tasks, memories, ...)
    ├── runtime.ts        # Agent Runtime (sessions, conversations, ...)
    ├── projects.ts       # Projects (projects, issues, PRs, ...)
    ├── codebase.ts       # Codebase (files, commits, branches, ...)
    ├── life_os.ts        # Life OS (goals, habits, journal, ...)
    ├── autonomy.ts       # Autonomy (plans, strategies, ...)
    └── cross-relations.ts # Cross-schema relations
```

## Blueprint Definition Structure

```typescript
import {
  BlueprintDefinition,
  orgTable, chunkTable, hasManyChunks,
  f, req, EMBEDDING_FIELDS,
  embeddingIndexes, chunkIndexes,
  btreeIndex, ginIndex, trgmIndex, gistGeoIndex,
  M2M_JUNCTION_OPTS,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [...],             // Phase 1: Tables
  relations: [...],          // Phase 2: Relations
  indexes: [...],            // Phase 3: Indexes
  full_text_searches: [...], // Phase 4: Full-text search
};

export default () => provisionBlueprint(definition, 'Schema Label');
```

## Phase 1: Tables

Every agentic-db table uses `orgTable()` which provides:
- `DataEntityMembership` node (org-scoped with `entity_id`)
- `DataTimestamps` node (`created_at`, `updated_at`)
- `AuthzEntityMembership` RLS policy
- Full CRUD grants for `authenticated` role

### Basic Table

```typescript
orgTable('contacts', [
  req('first_name', 'text'),        // required field
  f('last_name', 'text'),           // optional field
  f('email', 'text'),
  f('phone', 'text'),
  f('headline', 'text'),
  f('bio', 'text'),
  f('avatar_url', 'text'),
  ...EMBEDDING_FIELDS,              // embedding + embedding_text
])
```

### Field Helpers

- `f(name, type, opts?)` — optional field
- `req(name, type)` — required field (`is_required: true`)
- `EMBEDDING_FIELDS` — `[{ name: 'embedding_text', type: 'text' }, { name: 'embedding', type: 'vector(768)' }]`

### Supported Field Types

| Type | Example |
|------|---------|
| `text` | Names, descriptions, URLs |
| `int` | Counts, indexes |
| `float8` | Scores, amounts |
| `boolean` | Flags |
| `jsonb` | Metadata, config objects |
| `text[]` | Tags arrays |
| `vector(768)` | Embeddings |
| `timestamptz` | Dates |
| `geography(Point,4326)` | PostGIS coordinates |

### Chunk Tables

Every table with embeddings gets a corresponding chunk table:

```typescript
tables: [
  orgTable('contacts', [...EMBEDDING_FIELDS, ...]),
  chunkTable('contacts'),  // creates "contact_chunks" table
]
```

The `chunkTable()` helper:
- Singularizes the parent name (`contacts` → `contact`)
- Creates `{singular}_chunks` table with fields: `chunk_index`, `content`, `embedding_text`, `embedding`
- Uses standard org-scoped setup (same grants/policies as parent)

## Phase 2: Relations

### HasMany (parent → chunks, with CASCADE delete)

```typescript
relations: [
  hasManyChunks('contacts'),  // contacts → contact_chunks (CASCADE)
]
```

### BelongsTo (FK from child to parent)

```typescript
{
  $type: 'RelationBelongsTo',
  source_ref: 'deals',      // child table
  target_ref: 'companies',   // parent table
  delete_action: 'n',        // NO ACTION (default)
}
```

### ManyToMany (junction table)

```typescript
{
  $type: 'RelationManyToMany',
  source_ref: 'contacts',
  target_ref: 'tags',
  data: M2M_JUNCTION_OPTS,  // standard entity membership junction
}
```

`M2M_JUNCTION_OPTS` creates the junction table with `DataEntityMembership`, `AuthzEntityMembership`, and CRUD grants.

### Delete Actions

| Code | Action |
|------|--------|
| `'c'` | CASCADE — delete children when parent is deleted |
| `'n'` | NO ACTION — prevent deletion if children exist |
| `'a'` | SET NULL — set FK to null on parent delete |

## Phase 3: Indexes

### Index Helpers

```typescript
indexes: [
  // Vector similarity (pgvector HNSW)
  ...embeddingIndexes('contacts'),  // HNSW on embedding + BM25 on embedding_text
  ...chunkIndexes('contacts'),      // Same for chunk table + B-tree on chunk_index

  // B-tree (lookups, sorting)
  btreeIndex('deals', 'status'),
  btreeIndex('deals', 'stage'),

  // GIN (arrays, JSONB)
  ginIndex('contacts', 'tags'),
  ginIndex('agents', 'metadata'),

  // Trigram (fuzzy text search)
  trgmIndex('contacts', 'first_name'),
  trgmIndex('contacts', 'last_name'),

  // PostGIS (geography)
  gistGeoIndex('venues', 'location_geo'),
]
```

### Raw IndexDef

```typescript
{
  table_ref: 'contacts',
  column: 'embedding',
  access_method: 'hnsw',
  op_classes: ['vector_cosine_ops'],
  options: { m: 16, ef_construction: 128 },
}
```

## Phase 4: Full-Text Search

TSVector weighted multi-field search configurations:

```typescript
full_text_searches: [
  {
    table_ref: 'contacts',
    field_name: 'search_tsv',
    sources: [
      { field: 'first_name', weight: 'A' },
      { field: 'last_name', weight: 'A' },
      { field: 'headline', weight: 'B' },
      { field: 'bio', weight: 'C' },
    ],
  },
]
```

Weights: `A` (highest) → `D` (lowest). The engine creates a TSVector column, populates it via trigger, and adds a GIN index.

## Cross-Schema Relations

`schemas/cross-relations.ts` handles relations between tables in different schema modules. It receives the `refMaps` from all individual schema provisions and creates cross-schema FKs and M:N junctions.

```typescript
// In cross-relations.ts
export default async function crossRelations(refMaps: Map<string, string>[]) {
  // Merge all refMaps into one
  const allRefs = new Map<string, string>();
  for (const m of refMaps) for (const [k, v] of m) allRefs.set(k, v);

  // Create cross-schema relations using allRefs for resolution
}
```

## Adding a New Table

1. Choose the appropriate schema file (e.g., `schemas/crm.ts`)
2. Add the table to the `tables` array:
   ```typescript
   orgTable('new_table', [
     req('name', 'text'),
     f('description', 'text'),
     ...EMBEDDING_FIELDS,
   ]),
   chunkTable('new_table'),  // if it has embeddings
   ```
3. Add relations to the `relations` array
4. Add indexes to the `indexes` array:
   ```typescript
   ...embeddingIndexes('new_table'),
   ...chunkIndexes('new_table'),
   ```
5. Add FTS if needed to `full_text_searches`
6. Run provision: `pnpm run provision`

## Testing Changes

```bash
# From repo root
eval "$(pgpm env)"

# Create a fresh database (to avoid "already exists" errors)
cd packages/provision
pnpm run create-db

# Run provision
pnpm run provision
```

## Troubleshooting

- **"already exists" error**: Table/field already provisioned. Create a fresh database.
- **"Unresolved source_ref" error**: A relation references a table `ref` that doesn't exist in the blueprint. Check spelling.
- **Index creation fails**: The table or column might not exist yet. Ensure indexes reference tables defined in the same blueprint.
- **Chunk table name wrong**: Check `singularize()` handles your table name correctly (e.g., `companies` → `company`, not `companie`).
