/**
 * blueprint.ts — Declarative blueprint definition types and provision helper
 *
 * Mirrors the constructive-db blueprint definition format:
 *   { tables: [...], relations: [...], indexes: [...], full_text_searches: [...] }
 *
 * Each schema module exports a BlueprintDefinition. The provisionBlueprint()
 * function creates a server-side blueprint record and executes it via the
 * constructBlueprint mutation (all 4 phases run server-side).
 *
 * Phases (server-side):
 *   1. Tables (with fields, nodes, policies, grants)
 *   2. Relations (HasMany, BelongsTo, ManyToMany)
 *   3. Indexes (HNSW, BM25, B-tree, GIN, GIST, trigram)
 *   4. Full-text search (TSVector weighted multi-field)
 */

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  entityGrants,
  entityPolicyData,
  type PlatformClient,
} from './helpers';

// ---------------------------------------------------------------------------
// Blueprint definition types (matches constructive-db format)
// ---------------------------------------------------------------------------

export interface FieldDef {
  name: string;
  type: string;
  is_required?: boolean;
  default_value?: string;
}

export interface NodeDef {
  $type: string;
  data?: Record<string, unknown>;
}

export interface TableDef {
  /** Local reference name used in relations (e.g. 'contacts') */
  ref: string;
  /** Actual table name in the database */
  table_name: string;
  /** Node types: first creates the table, rest augment it (including Data* nodes) */
  nodes: (string | NodeDef)[];
  /** Field definitions */
  fields: FieldDef[];
  /** Roles granted access */
  grant_roles: string[];
  /** Grant privileges: [privilege, columns][] */
  grants: [string, string][];
  /** RLS policies */
  policies: {
    $type: string;
    privileges?: string[];
    permissive?: boolean;
    policy_name?: string;
    data?: Record<string, unknown>;
  }[];
}

export interface RelationDef {
  $type: 'RelationHasMany' | 'RelationBelongsTo' | 'RelationManyToMany';
  source_ref: string;
  target_ref: string;
  delete_action?: string;
  is_required?: boolean;
  field_name?: string;
  source_field_name?: string;
  target_field_name?: string;
  junction_table_name?: string;
  /** Junction table config for M:N relations */
  data?: {
    node_type?: string;
    policy_type?: string;
    policy_permissive?: boolean;
    policy_data?: Record<string, unknown>;
    grant_roles?: string[];
    grant_privileges?: [string, string][];
  };
}

export interface IndexDef {
  /** Table reference name (must match a table's ref in this blueprint) */
  table_ref: string;
  /** Column name to index */
  column: string;
  /** Access method: btree, gin, gist, hnsw, bm25, etc. */
  access_method: string;
  /** Operator class(es) for the index */
  op_classes?: string[];
  /** Index-specific options (e.g. { m: 16, ef_construction: 128 } for HNSW) */
  options?: Record<string, unknown>;
}

export interface FullTextSearchDef {
  /** Table reference name */
  table_ref: string;
  /** TSVector column name (e.g. 'search_tsv') */
  field: string;
  /** Source fields with weights and language */
  sources: { field: string; weight: string; lang?: string }[];
}

export interface BlueprintDefinition {
  tables: TableDef[];
  relations: RelationDef[];
  /** Phase 3: Indexes created after all tables and relations exist */
  indexes?: IndexDef[];
  /** Phase 4: Full-text search configurations */
  full_text_searches?: FullTextSearchDef[];
}

// ---------------------------------------------------------------------------
// Standard org-scoped table definition helpers
// ---------------------------------------------------------------------------

/** Standard entity membership nodes (DataEntityMembership + DataTimestamps) */
const ORG_NODES: TableDef['nodes'] = [
  'DataEntityMembership',
  { $type: 'DataTimestamps', data: { include_id: false } },
];

/** Standard entity membership policy */
const ORG_POLICY: TableDef['policies'][0] = {
  $type: 'AuthzEntityMembership',
  privileges: ['select', 'insert', 'update', 'delete'],
  permissive: true,
  data: {
    entity_field: 'entity_id',
    membership_type: 2,
  },
};

/** Full CRUD grants */
const CRUD_GRANTS: [string, string][] = [
  ['select', '*'],
  ['insert', '*'],
  ['update', '*'],
  ['delete', '*'],
];

/**
 * Create a standard org-scoped table definition.
 * All tables in agentic-db share the same nodes, grants, and policies.
 * Pass extra Data* nodes (DataSearch, DataEmbedding, DataPostGIS, etc.) as the third arg.
 */
export function orgTable(
  ref: string,
  fields: FieldDef[],
  extraNodes?: NodeDef[]
): TableDef {
  return {
    ref,
    table_name: ref,
    nodes: [...ORG_NODES, ...(extraNodes ?? [])],
    fields,
    grant_roles: ['authenticated'],
    grants: CRUD_GRANTS,
    policies: [ORG_POLICY],
  };
}

// ---------------------------------------------------------------------------
// Data* node helper functions — build NodeDef entries for common patterns
// ---------------------------------------------------------------------------

/**
 * Create a DataSearch node that orchestrates embedding + BM25 + optional FTS + optional trigram.
 * This replaces manual EMBEDDING_FIELDS + embeddingIndexes() + bm25Index() + full_text_searches[].
 *
 * DataSearch auto-creates:
 *   - embedding vector(768) + HNSW index + embedding_stale bool + stale trigger + enqueue trigger
 *   - BM25 index on embedding_text
 *   - TSVector field + GIN index + populate trigger (if fts configured)
 *   - @trgmSearch smart tags on specified fields
 *   - @searchConfig smart tag with unified weights
 */
export function dataSearch(opts: {
  /** Source fields that feed the embedding (for stale tracking) */
  embedding_source_fields?: string[];
  /** BM25 field name (default: 'embedding_text') */
  bm25_field?: string;
  /** Full-text search config (omit to skip FTS) */
  fts?: {
    field_name?: string;
    source_fields: { field: string; weight: string; lang?: string }[];
  };
  /** Field names for trigram fuzzy matching */
  trgm_fields?: string[];
}): NodeDef {
  const data: Record<string, unknown> = {};

  // Embedding config
  const embeddingConfig: Record<string, unknown> = {};
  if (opts.embedding_source_fields) {
    embeddingConfig.source_fields = opts.embedding_source_fields;
  }
  data.embedding = embeddingConfig;

  // BM25 config (ParadeDB pg_search)
  data.bm25 = { field_name: opts.bm25_field ?? 'embedding_text' };

  // FTS config
  if (opts.fts) {
    data.full_text_search = {
      field_name: opts.fts.field_name ?? 'search_tsv',
      source_fields: opts.fts.source_fields,
    };
  }

  // Trigram fields
  if (opts.trgm_fields && opts.trgm_fields.length > 0) {
    data.trgm_fields = opts.trgm_fields;
  }

  return { $type: 'DataSearch', data };
}

/**
 * Create a DataPostGIS node for geography/geometry columns.
 * Replaces manual f('field', 'geography(Point,4326)') + gistGeoIndex().
 */
export function dataPostGIS(opts: {
  field_name: string;
  use_geography?: boolean;
  geometry_type?: string;
  srid?: number;
}): NodeDef {
  return {
    $type: 'DataPostGIS',
    data: {
      field_name: opts.field_name,
      use_geography: opts.use_geography ?? true,
      geometry_type: opts.geometry_type ?? 'Point',
      srid: opts.srid ?? 4326,
    },
  };
}

/**
 * Create a DataEmbedding node for standalone vector columns (secondary embeddings).
 * Use for extra vector columns like trigger_concept, intent_trigger on rules/skills.
 */
export function dataEmbedding(opts: {
  field_name: string;
  source_fields?: string[];
  enqueue_job?: boolean;
}): NodeDef {
  return {
    $type: 'DataEmbedding',
    data: {
      field_name: opts.field_name,
      ...(opts.source_fields ? { source_fields: opts.source_fields } : {}),
      enqueue_job: opts.enqueue_job ?? false,
    },
  };
}

/** Standard chunk table fields (embedding_text must exist before DataSearch/BM25 node) */
const CHUNK_FIELDS: FieldDef[] = [
  { name: 'chunk_index', type: 'int', is_required: true },
  { name: 'content', type: 'text', is_required: true },
  { name: 'embedding_text', type: 'text' },
];

/** DataSearch node for chunk tables (embedding + BM25, no FTS) */
const CHUNK_DATA_SEARCH: NodeDef = dataSearch({
  bm25_field: 'embedding_text',
});

/**
 * Singularize a table name for chunk table derivation.
 * Handles common English plural patterns:
 *   companies -> company, memories -> memory, repositories -> repository
 *   contacts -> contact, deals -> deal, etc.
 */
function singularize(plural: string): string {
  if (plural.endsWith('ies')) return plural.slice(0, -3) + 'y';
  if (plural.endsWith('ses') || plural.endsWith('xes') || plural.endsWith('zes')) return plural.slice(0, -2);
  if (plural.endsWith('s') && !plural.endsWith('ss')) return plural.slice(0, -1);
  return plural;
}

/**
 * Create a chunk table definition for a parent table.
 * Convention: parent "contacts" -> chunk table "contact_chunks"
 */
export function chunkTable(parentRef: string): TableDef {
  const chunkRef = `${singularize(parentRef)}_chunks`;
  return orgTable(chunkRef, CHUNK_FIELDS, [CHUNK_DATA_SEARCH]);
}

/**
 * Create a HasMany relation (parent -> chunks, CASCADE delete).
 */
export function hasManyChunks(parentRef: string): RelationDef {
  return {
    $type: 'RelationHasMany',
    source_ref: parentRef,
    target_ref: `${singularize(parentRef)}_chunks`,
    delete_action: 'c',
  };
}

/** Standard M:N junction table options (entity membership + CRUD) */
export const M2M_JUNCTION_OPTS: RelationDef['data'] = {
  node_type: 'DataEntityMembership',
  policy_type: 'AuthzEntityMembership',
  policy_permissive: true,
  policy_data: { entity_field: 'entity_id', membership_type: 2 },
  grant_roles: ['authenticated'],
  grant_privileges: [['select', '*'], ['insert', '*'], ['delete', '*']],
};

/** Shorthand: field definition */
export function f(
  name: string,
  type: string,
  opts?: { is_required?: boolean; default_value?: string }
): FieldDef {
  return { name, type, ...opts };
}

/** Shorthand: required field */
export function req(name: string, type: string): FieldDef {
  return { name, type, is_required: true };
}

// ---------------------------------------------------------------------------
// Index helper functions — create IndexDef entries for common patterns
// ---------------------------------------------------------------------------

/** HNSW vector similarity index (pgvector) */
export function hnswIndex(
  table_ref: string,
  column = 'embedding',
  opts?: { m?: number; ef_construction?: number; opclass?: string }
): IndexDef {
  return {
    table_ref,
    column,
    access_method: 'hnsw',
    op_classes: [opts?.opclass ?? 'vector_cosine_ops'],
    options: { m: opts?.m ?? 16, ef_construction: opts?.ef_construction ?? 128 },
  };
}

/** BM25 keyword search index (ParadeDB) */
export function bm25Index(
  table_ref: string,
  column = 'embedding_text',
  opts?: { text_config?: string }
): IndexDef {
  return {
    table_ref,
    column,
    access_method: 'bm25',
    options: { text_config: opts?.text_config ?? 'english' },
  };
}

/** B-tree index for lookups, sorting, FKs */
export function btreeIndex(table_ref: string, column: string): IndexDef {
  return { table_ref, column, access_method: 'btree' };
}

/** GIN index on array/jsonb columns */
export function ginIndex(table_ref: string, column: string): IndexDef {
  return { table_ref, column, access_method: 'gin' };
}

/** GIN trigram index for fuzzy text matching (pg_trgm) */
export function trgmIndex(table_ref: string, column: string): IndexDef {
  return {
    table_ref,
    column,
    access_method: 'gin',
    op_classes: ['gin_trgm_ops'],
  };
}

/** GIST index for geography/geometry columns (PostGIS) */
export function gistGeoIndex(table_ref: string, column: string): IndexDef {
  return { table_ref, column, access_method: 'gist' };
}


// ---------------------------------------------------------------------------
// Provision engine — server-side constructBlueprint via the SDK
// ---------------------------------------------------------------------------

const databaseId = requireDatabaseId();

/**
 * Convert a BlueprintDefinition to the server-side JSON format expected by
 * construct_blueprint. The TypeScript types mirror the server format closely;
 * this function handles any remaining field-name differences.
 */
function toServerDefinition(def: BlueprintDefinition): Record<string, unknown> {
  return {
    tables: def.tables.map((t) => ({
      ref: t.ref,
      table_name: t.table_name,
      nodes: t.nodes,
      fields: t.fields,
      grant_roles: t.grant_roles,
      grants: t.grants,
      policies: t.policies,
    })),
    relations: def.relations,
    indexes: def.indexes ?? [],
    full_text_searches: def.full_text_searches ?? [],
  };
}

/**
 * Provision a blueprint definition using the server-side constructBlueprint
 * mutation. All four phases run server-side in a single transaction:
 *
 *   Phase 1: Create tables (with fields, nodes, policies, grants)
 *   Phase 2: Create relations (HasMany, BelongsTo, ManyToMany)
 *   Phase 3: Create indexes (HNSW, BM25, B-tree, GIN, GIST, trigram)
 *   Phase 4: Create full-text search configurations (TSVector)
 *
 * Returns a ref_map of { ref -> tableId } for cross-schema references.
 */
export async function provisionBlueprint(
  definition: BlueprintDefinition,
  label: string,
  client?: PlatformClient
): Promise<Map<string, string>> {
  const sdk = client ?? createPlatformClient();

  console.log(`\n\ud83d\udccb ${label}\n`);

  // 1. Resolve the database owner_id (needed for blueprint record)
  const dbResult = await withRetry(() =>
    sdk.database.findOne({ id: databaseId, select: { ownerId: true } }).unwrap()
  );
  const ownerId = (dbResult as any)?.database?.ownerId;
  if (!ownerId) throw new Error('Could not resolve database owner_id');

  // 2. Create a draft blueprint record with the full definition
  const blueprintName = `agentic_${label.toLowerCase().replace(/[^a-z0-9]+/g, '_')}_${Date.now()}`;
  const serverDef = toServerDefinition(definition);

  const bpResult = await withRetry(() =>
    sdk.blueprint.create({
      data: {
        ownerId,
        databaseId,
        name: blueprintName,
        displayName: label,
        definition: serverDef,
      },
      select: { id: true },
    }).unwrap()
  );
  const blueprintId = (bpResult as any)?.createBlueprint?.blueprint?.id;
  if (!blueprintId) throw new Error('Failed to create blueprint record');

  console.log(`   Blueprint: ${blueprintId}`);

  // 3. Execute all 4 phases server-side via constructBlueprint mutation
  const constructResult = await withRetry(() =>
    sdk.mutation.constructBlueprint(
      { input: { blueprintId } },
      { select: { result: true } }
    ).unwrap()
  );

  const refMapJson = (constructResult as any)?.constructBlueprint?.result;
  if (!refMapJson) {
    // Check blueprint status for error details
    const bpCheck = await sdk.blueprint.findOne({
      id: blueprintId,
      select: { status: true, errorDetails: true },
    }).unwrap();
    const bp = (bpCheck as any)?.blueprint;
    throw new Error(`constructBlueprint failed: ${bp?.errorDetails ?? 'unknown error'}`);
  }

  // 4. Parse ref_map from server response
  const refMap = new Map<string, string>();
  for (const [ref, tableId] of Object.entries(refMapJson as Record<string, string>)) {
    refMap.set(ref, tableId);
  }

  // Log results
  const tableCount = definition.tables.length;
  const relCount = definition.relations.length;
  const idxCount = definition.indexes?.length ?? 0;
  const ftsCount = definition.full_text_searches?.length ?? 0;
  console.log(`   \u2713 ${tableCount} tables, ${relCount} relations, ${idxCount} indexes, ${ftsCount} FTS configs`);
  console.log(`   ref_map: ${refMap.size} entries\n`);

  return refMap;
}
