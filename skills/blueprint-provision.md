---
name: agentic-db-blueprint-provision
description: Authoring and provisioning declarative blueprint definitions for agentic-db schemas. Covers Data* nodes (DataSearch, DataPostGIS, DataEmbedding), table definitions, relations, indexes, full-text search, chunk tables, and the 4-phase provision engine.
---

# Blueprint Provision

How to author and provision schema blueprints for agentic-db. Each schema module exports a `BlueprintDefinition` that the provision engine processes in 4 phases.

## Architecture

```
packages/provision/src/
├── blueprint.ts          # Types, helpers, Data* node builders, provision engine
├── config.ts             # Environment configuration (routing modes)
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
  f, req,
  dataSearch, dataPostGIS, dataEmbedding,
  M2M_JUNCTION_OPTS,
  bm25Index, btreeIndex, ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [...],             // Phase 1: Tables (with Data* nodes)
  relations: [...],          // Phase 2: Relations
  indexes: [...],            // Phase 3: Only indexes NOT handled by Data* nodes
};

export default () => provisionBlueprint(definition, 'Schema Label');
```

## Data* Nodes (Preferred Approach)

**Always prefer Data* nodes over manual fields + Phase 3/4 indexes.** Data* nodes auto-create fields, indexes, triggers, and smart tags declaratively.

### DataSearch (replaces manual embedding fields + indexes + FTS + trigram)

The most powerful node. Orchestrates embedding + BM25 + optional FTS + optional trigram in one declaration.

**What DataSearch auto-creates:**
- `embedding vector(768)` field + HNSW index (pgvector)
- `embedding_stale bool` field + stale-marking triggers (insert + update)
- `enqueue_embedding` job trigger
- BM25 index on `embedding_text` (ParadeDB)
- TSVector field + GIN index + populate trigger (if `fts` configured)
- `@trgmSearch` smart tags (if `trgm_fields` configured)
- `@searchConfig` smart tag with unified weights

```typescript
orgTable('contacts', [
  req('first_name', 'text'),
  f('last_name', 'text'),
  f('headline', 'text'),
  f('bio', 'text'),
  f('tags', 'citext[]'),
  f('embedding_text', 'text'),  // Must exist before DataSearch
], {
  data_nodes: [
    dataSearch({
      embedding_source_fields: ['first_name', 'last_name', 'headline', 'bio'],
      bm25_field: 'embedding_text',  // default
      fts: {
        field_name: 'search_tsv',
        source_fields: [
          { field: 'first_name', weight: 'A' },
          { field: 'last_name', weight: 'A' },
          { field: 'headline', weight: 'B' },
          { field: 'bio', weight: 'C' },
        ],
      },
      trgm_fields: ['first_name', 'last_name'],
    }),
  ],
}),
```

### DataPostGIS (replaces manual geography field + gistGeoIndex)

```typescript
orgTable('venues', [...], {
  data_nodes: [
    dataPostGIS({ field_name: 'location', use_geography: true }),
  ],
}),
```

Auto-creates: geography/geometry column + GIST spatial index.

### DataEmbedding (standalone vector columns)

Use for tables that need vector embeddings but NOT the full search stack (no BM25/FTS/trigram). Example: images (visual embeddings).

```typescript
orgTable('images', [
  req('url', 'text'),
  f('meta', 'jsonb'),
], {
  data_nodes: [dataEmbedding({ field_name: 'embedding' })],
}),
```

Also use for secondary embedding columns on tables that already have DataSearch:

```typescript
orgTable('rules', [...], {
  data_nodes: [
    dataSearch({ ... }),  // Primary embedding
    dataEmbedding({ field_name: 'trigger_concept', source_fields: ['trigger_text'] }),
  ],
}),
```

## Phase 1: Tables

Every agentic-db table uses `orgTable()` which provides:
- `DataEntityMembership` node (org-scoped with `entity_id`)
- `DataTimestamps` node (`created_at`, `updated_at`)
- `AuthzEntityMembership` RLS policy
- Full CRUD grants for `authenticated` role

### Field Helpers

- `f(name, type, opts?)` -- optional field
- `req(name, type)` -- required field (`is_required: true`)

### Chunk Tables

Every table with embeddings gets a corresponding chunk table:

```typescript
tables: [
  orgTable('contacts', [f('embedding_text', 'text'), ...], {
    data_nodes: [dataSearch({ ... })],
  }),
  chunkTable('contacts'),  // creates "contact_chunks" with DataSearch auto-applied
]
```

The `chunkTable()` helper:
- Singularizes the parent name (`contacts` -> `contact`, `companies` -> `company`)
- Creates `{singular}_chunks` table with fields: `chunk_index`, `content`, `embedding_text`
- Auto-applies DataSearch node (embedding + BM25 on `embedding_text`)

## Phase 2: Relations

### HasMany (parent -> chunks, with CASCADE delete)

```typescript
relations: [
  hasManyChunks('contacts'),  // contacts -> contact_chunks (CASCADE)
]
```

### BelongsTo / ManyToMany

```typescript
// BelongsTo
{ $type: 'RelationBelongsTo', source_ref: 'deals', target_ref: 'companies', delete_action: 'n' }

// ManyToMany
{ $type: 'RelationManyToMany', source_ref: 'contacts', target_ref: 'tags', data: M2M_JUNCTION_OPTS }
```

**Important:** Avoid creating M:N relations in cross-relations.ts that conflict with HasMany relations in individual schema files.

### Delete Actions

| Code | Action |
|------|--------|
| `'c'` | CASCADE -- delete children when parent is deleted |
| `'n'` | NO ACTION -- prevent deletion if children exist |
| `'a'` | SET NULL -- set FK to null on parent delete |

## Phase 3: Indexes (Manual -- Only When Data* Nodes Don't Cover It)

**Only add indexes here that Data* nodes don't handle:**
- DataSearch handles: HNSW, BM25, GIN(search_tsv), trigram
- DataPostGIS handles: GIST on geography
- DataEmbedding handles: HNSW on standalone vectors

**Still need Phase 3 for:**
- B-tree indexes (lookups, sorting, FKs)
- GIN indexes on tags/JSONB columns
- BM25 on extra content fields (e.g., `notes.content`)

```typescript
indexes: [
  btreeIndex('deals', 'stage'),
  ginIndex('contacts', 'tags'),
  bm25Index('notes', 'content'),
]
```

## Adding a New Table

1. Choose the appropriate schema file
2. Add the table with Data* nodes:
   ```typescript
   orgTable('new_table', [
     req('name', 'text'),
     f('description', 'text'),
     f('tags', 'citext[]'),
     f('embedding_text', 'text'),
   ], {
     data_nodes: [
       dataSearch({
         embedding_source_fields: ['name', 'description'],
         fts: { field_name: 'search_tsv', source_fields: [
           { field: 'name', weight: 'A' },
           { field: 'description', weight: 'B' },
         ]},
       }),
     ],
   }),
   chunkTable('new_table'),
   ```
3. Add relations (including `hasManyChunks('new_table')`)
4. Add Phase 3 indexes for B-tree/GIN only
5. Run provision: `pnpm run provision`

## Verifying Data* Nodes

After provisioning, verify:

```sql
-- embedding_stale columns
SELECT table_name FROM information_schema.columns
WHERE table_schema LIKE '%app_public%' AND column_name = 'embedding_stale';

-- Embedding stale triggers
SELECT trigger_name, event_object_table FROM information_schema.triggers
WHERE trigger_schema LIKE '%app_public%' AND trigger_name LIKE '%embedding_stale%';

-- PostGIS columns
SELECT column_name, table_name FROM information_schema.columns
WHERE table_schema LIKE '%app_public%' AND udt_name IN ('geography', 'geometry');
```

## Troubleshooting

- **"already exists" error**: Create a fresh database.
- **PostGraphile naming conflict**: Check for duplicate HasMany + M:N relations on the same pair. Also check APP_SCHEMATA points to the correct schema.
- **Chunk table name wrong**: Check `singularize()` handles your table name correctly.
- **DataSearch not creating embedding**: Ensure `embedding_text` field is in the `fields` array before `data_nodes`.
