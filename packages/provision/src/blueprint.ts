/**
 * blueprint.ts — Declarative blueprint definition types and provision helper
 *
 * Mirrors the constructive-db blueprint definition format:
 *   { tables: [...], relations: [...], indexes: [...], full_text_searches: [...] }
 *
 * Each schema module exports a BlueprintDefinition instead of imperative
 * createOrgTable/addField/relationProvision calls. The provisionBlueprint()
 * function processes the definition using the existing SDK.
 *
 * Phases:
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
  /** Node types: first creates the table, rest augment it */
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
  /**
   * Data nodes that run AFTER fields are created (Phase 1b).
   * Use for DataSearch, DataEmbedding, DataBm25, DataFullTextSearch, DataPostGIS, etc.
   * These nodes expect their target fields to already exist on the table.
   */
  data_nodes?: NodeDef[];
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
  field_name: string;
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
 */
export function orgTable(
  ref: string,
  fields: FieldDef[],
  opts?: { data_nodes?: NodeDef[] }
): TableDef {
  return {
    ref,
    table_name: ref,
    nodes: ORG_NODES,
    fields,
    grant_roles: ['authenticated'],
    grants: CRUD_GRANTS,
    policies: [ORG_POLICY],
    ...(opts?.data_nodes ? { data_nodes: opts.data_nodes } : {}),
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

  // BM25 config
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
  return orgTable(chunkRef, CHUNK_FIELDS, { data_nodes: [CHUNK_DATA_SEARCH] });
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
// Provision engine — processes a BlueprintDefinition via the SDK
// ---------------------------------------------------------------------------

const databaseId = requireDatabaseId();

/**
 * Resolve table/field names to UUIDs for Phase 3/4 index creation.
 * Returns a map of tableName -> { tableId, fields: Map<fieldName, fieldId> }
 */
async function resolveFieldIds(
  sdk: PlatformClient,
  refMap: Map<string, string>
): Promise<Map<string, { tableId: string; fields: Map<string, string> }>> {
  const result = new Map<string, { tableId: string; fields: Map<string, string> }>();

  // Build reverse map: tableId -> ref
  const idToRef = new Map<string, string>();
  for (const [ref, tableId] of refMap) {
    idToRef.set(tableId, ref);
    result.set(ref, { tableId, fields: new Map() });
  }

  // Fetch all fields in pages
  let offset = 0;
  const pageSize = 500;
  let hasMore = true;
  while (hasMore) {
    const fieldsResult = await withRetry(() =>
      sdk.field
        .findMany({
          first: pageSize,
          offset,
          select: { id: true, name: true, tableId: true },
        })
        .unwrap()
    );
    const nodes = (fieldsResult as any)?.fields?.nodes ?? [];
    for (const n of nodes) {
      if (!n.name || !n.id || !n.tableId) continue;
      const ref = idToRef.get(n.tableId);
      if (ref) {
        result.get(ref)!.fields.set(n.name, n.id);
      }
    }
    hasMore = nodes.length === pageSize;
    offset += pageSize;
  }

  return result;
}

/**
 * Provision a blueprint definition using the constructive SDK.
 *
 * Phase 1: Create all tables (with fields, nodes, policies, grants)
 *   Phase 1b: Apply data_nodes (DataSearch, DataEmbedding, etc.) after fields
 * Phase 2: Create all relations (HasMany, BelongsTo, ManyToMany)
 * Phase 3: Create all indexes (HNSW, BM25, B-tree, GIN, GIST, trigram)
 * Phase 4: Create full-text search configurations (TSVector)
 *
 * Returns a ref_map of { ref -> tableId } for cross-schema references.
 */
export async function provisionBlueprint(
  definition: BlueprintDefinition,
  label: string,
  client?: PlatformClient
): Promise<Map<string, string>> {
  const sdk = client ?? createPlatformClient();
  const refMap = new Map<string, string>();

  console.log(`\n\ud83d\udccb ${label}\n`);

  // -- Phase 1: Tables -------------------------------------------------------
  for (const table of definition.tables) {
    // First node creates the table
    const firstNode = table.nodes[0];
    const nodeType = typeof firstNode === 'string' ? firstNode : firstNode.$type;
    const nodeData = typeof firstNode === 'string' ? undefined : firstNode.data;

    // First policy (if any)
    const firstPolicy = table.policies[0];

    const createData: Record<string, unknown> = {
      databaseId,
      tableName: table.table_name,
      nodeType,
      ...(nodeData ? { nodeData } : {}),
      useRls: true,
      grantRoles: table.grant_roles,
      grantPrivileges: table.grants as unknown as Record<string, unknown>,
      ...(firstPolicy
        ? {
            policyType: firstPolicy.$type,
            policyPermissive: firstPolicy.permissive ?? true,
            ...(firstPolicy.data ? { policyData: firstPolicy.data } : {}),
          }
        : {}),
    };

    const result = await withRetry(() =>
      sdk.secureTableProvision
        .create({
          data: createData as any,
          select: { id: true, tableId: true },
        })
        .unwrap()
    );

    const tableId =
      (result as any).createSecureTableProvision?.secureTableProvision?.tableId;
    if (!tableId) throw new Error(`No tableId for ${table.table_name}`);

    // Remaining nodes (index 1+): augment existing table
    for (let i = 1; i < table.nodes.length; i++) {
      const node = table.nodes[i];
      const nType = typeof node === 'string' ? node : node.$type;
      const nData = typeof node === 'string' ? undefined : node.data;

      await withRetry(() =>
        sdk.secureTableProvision
          .create({
            data: {
              databaseId,
              tableId,
              nodeType: nType,
              ...(nData ? { nodeData: nData } : {}),
            } as any,
            select: { id: true },
          })
          .unwrap()
      );
    }

    // Fields
    for (const field of table.fields) {
      await withRetry(() =>
        sdk.field
          .create({
            data: {
              tableId,
              name: field.name,
              type: field.type,
              isRequired: field.is_required ?? false,
              label: field.name,
              ...(field.default_value
                ? { defaultValue: field.default_value }
                : {}),
            },
            select: { id: true },
          })
          .unwrap()
      );
    }

    // Phase 1b: Data nodes (run AFTER fields exist)
    if (table.data_nodes) {
      for (const dn of table.data_nodes) {
        await withRetry(() =>
          sdk.secureTableProvision
            .create({
              data: {
                databaseId,
                tableId,
                nodeType: dn.$type,
                ...(dn.data ? { nodeData: dn.data } : {}),
              } as any,
              select: { id: true },
            })
            .unwrap()
        );
      }
    }

    refMap.set(table.ref, tableId);
    console.log(`   \u2713 ${table.table_name} (${table.fields.length} fields)`);
  }

  // -- Phase 2: Relations ----------------------------------------------------
  for (const rel of definition.relations) {
    const sourceId = refMap.get(rel.source_ref);
    const targetId = refMap.get(rel.target_ref);

    if (!sourceId) {
      throw new Error(
        `Unresolved source_ref "${rel.source_ref}" in relation`
      );
    }
    if (!targetId) {
      throw new Error(
        `Unresolved target_ref "${rel.target_ref}" in relation`
      );
    }

    const relData: Record<string, unknown> = {
      databaseId,
      relationType: rel.$type,
      sourceTableId: sourceId,
      targetTableId: targetId,
      ...(rel.delete_action ? { deleteAction: rel.delete_action } : {}),
      ...(rel.is_required !== undefined
        ? { isRequired: rel.is_required }
        : {}),
      ...(rel.field_name ? { fieldName: rel.field_name } : {}),
      ...(rel.source_field_name
        ? { sourceFieldName: rel.source_field_name }
        : {}),
      ...(rel.target_field_name
        ? { targetFieldName: rel.target_field_name }
        : {}),
      ...(rel.junction_table_name
        ? { junctionTableName: rel.junction_table_name }
        : {}),
    };

    // M:N junction table config
    if (rel.data) {
      if (rel.data.node_type) relData.nodeType = rel.data.node_type;
      if (rel.data.policy_type) relData.policyType = rel.data.policy_type;
      if (rel.data.policy_permissive !== undefined)
        relData.policyPermissive = rel.data.policy_permissive;
      if (rel.data.policy_data) relData.policyData = rel.data.policy_data;
      if (rel.data.grant_roles) relData.grantRoles = rel.data.grant_roles;
      if (rel.data.grant_privileges)
        relData.grantPrivileges = rel.data.grant_privileges;
    }

    await withRetry(() =>
      sdk.relationProvision
        .create({
          data: relData as any,
          select: { id: true },
        })
        .unwrap()
    );

    const label =
      rel.$type === 'RelationManyToMany'
        ? `${rel.source_ref} <-> ${rel.target_ref} (${rel.junction_table_name})`
        : `${rel.source_ref} -> ${rel.target_ref}`;
    console.log(`   \u21b3 ${label}`);
  }

  // -- Phase 3: Indexes ------------------------------------------------------
  if (definition.indexes && definition.indexes.length > 0) {
    console.log(`\n   \ud83d\uddc2\ufe0f  Phase 3: Creating ${definition.indexes.length} indexes...`);

    // Resolve field IDs for all tables in this blueprint
    const tableFieldMap = await resolveFieldIds(sdk, refMap);

    let created = 0;
    let skipped = 0;

    for (const idx of definition.indexes) {
      const info = tableFieldMap.get(idx.table_ref);
      if (!info) {
        console.log(`   \u26a0 idx_${idx.table_ref}_${idx.column}_${idx.access_method}: table '${idx.table_ref}' not in blueprint, skipping`);
        skipped++;
        continue;
      }

      const fieldId = info.fields.get(idx.column);
      if (!fieldId) {
        console.log(`   \u26a0 idx_${idx.table_ref}_${idx.column}_${idx.access_method}: field '${idx.column}' not found on '${idx.table_ref}', skipping`);
        skipped++;
        continue;
      }

      const indexName = `idx_${idx.table_ref}_${idx.column}_${idx.access_method}`;

      try {
        await withRetry(() =>
          sdk.index
            .create({
              data: {
                databaseId,
                tableId: info.tableId,
                name: indexName,
                fieldIds: [fieldId],
                accessMethod: idx.access_method,
                ...(idx.op_classes ? { opClasses: idx.op_classes } : {}),
                ...(idx.options ? { options: idx.options } : {}),
              },
              select: { id: true },
            })
            .unwrap()
        );
        created++;
        console.log(`   \u2713 ${indexName}`);
      } catch (err: unknown) {
        const msg = err instanceof Error ? err.message : String(err);
        if (msg.includes('already exists') || msg.includes('exists')) {
          skipped++;
          console.log(`   \u2022 ${indexName} (exists)`);
        } else {
          console.error(`   \u2717 ${indexName}: ${msg.slice(0, 120)}`);
        }
      }
    }

    console.log(`   Indexes: ${created} created, ${skipped} skipped`);
  }

  // -- Phase 4: Full-text search ---------------------------------------------
  if (definition.full_text_searches && definition.full_text_searches.length > 0) {
    console.log(`\n   \ud83d\udcc4 Phase 4: Configuring ${definition.full_text_searches.length} full-text search configs...`);

    // Resolve field IDs if not already done in Phase 3
    const tableFieldMap = await resolveFieldIds(sdk, refMap);

    for (const fts of definition.full_text_searches) {
      const info = tableFieldMap.get(fts.table_ref);
      if (!info) {
        console.log(`   \u26a0 ${fts.table_ref}.${fts.field_name}: table not in blueprint, skipping`);
        continue;
      }

      const tsvFieldId = info.fields.get(fts.field_name);
      if (!tsvFieldId) {
        console.log(`   \u26a0 ${fts.table_ref}.${fts.field_name}: tsvector field not found, skipping`);
        continue;
      }

      const sourceFieldIds: string[] = [];
      const weights: string[] = [];
      const langs: string[] = [];
      let missingSource = false;

      for (const src of fts.sources) {
        const fid = info.fields.get(src.field);
        if (!fid) {
          console.log(`   \u26a0 ${fts.table_ref}: source field '${src.field}' not found, skipping FTS config`);
          missingSource = true;
          break;
        }
        sourceFieldIds.push(fid);
        weights.push(src.weight);
        langs.push(src.lang ?? 'english');
      }

      if (missingSource) continue;

      try {
        await withRetry(() =>
          sdk.fullTextSearch
            .create({
              data: {
                tableId: info.tableId,
                fieldId: tsvFieldId,
                fieldIds: sourceFieldIds,
                weights,
                langs,
              },
              select: { id: true },
            })
            .unwrap()
        );
        console.log(`   \u2713 ${fts.table_ref}.${fts.field_name}`);
      } catch (err: unknown) {
        const msg = err instanceof Error ? err.message : String(err);
        if (msg.includes('already exists') || msg.includes('exists')) {
          console.log(`   \u2022 ${fts.table_ref}.${fts.field_name} (exists)`);
        } else {
          console.error(`   \u2717 ${fts.table_ref}.${fts.field_name}: ${msg.slice(0, 120)}`);
        }
      }
    }
  }

  return refMap;
}
