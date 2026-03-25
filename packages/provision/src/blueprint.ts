/**
 * blueprint.ts — Blueprint definition types and provision engine
 *
 * Types mirror the constructive-db blueprint definition format:
 *   { tables: [...], relations: [...], indexes: [...], full_text_searches: [...] }
 *
 * The provisionBlueprint() function creates a server-side blueprint record
 * and executes it via the constructBlueprint mutation (all 4 phases server-side).
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
  type PlatformClient,
} from './helpers';

// ---------------------------------------------------------------------------
// Blueprint definition types (matches constructive-db server format)
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
// Shared constants — standard org-scoped table defaults
// ---------------------------------------------------------------------------

/** Standard entity membership nodes (DataEntityMembership + DataTimestamps) */
export const ORG_NODES: TableDef['nodes'] = [
  'DataEntityMembership',
  { $type: 'DataTimestamps', data: { include_id: false } },
];

/** Standard entity membership policy */
export const ORG_POLICY: TableDef['policies'][0] = {
  $type: 'AuthzEntityMembership',
  privileges: ['select', 'insert', 'update', 'delete'],
  permissive: true,
  data: {
    entity_field: 'entity_id',
    membership_type: 2,
  },
};

/** Full CRUD grants */
export const CRUD_GRANTS: [string, string][] = [
  ['select', '*'],
  ['insert', '*'],
  ['update', '*'],
  ['delete', '*'],
];

/** Standard M:N junction table options (entity membership + CRUD) */
export const M2M_JUNCTION_OPTS: RelationDef['data'] = {
  node_type: 'DataEntityMembership',
  policy_type: 'AuthzEntityMembership',
  policy_permissive: true,
  policy_data: { entity_field: 'entity_id', membership_type: 2 },
  grant_roles: ['authenticated'],
  grant_privileges: [['select', '*'], ['insert', '*'], ['delete', '*']],
};

// ---------------------------------------------------------------------------
// Provision engine — server-side constructBlueprint via the SDK
// ---------------------------------------------------------------------------

const databaseId = requireDatabaseId();

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
  const ownerId = dbResult?.database?.ownerId;
  if (!ownerId) throw new Error('Could not resolve database owner_id');

  // 2. Create a draft blueprint record with the full definition
  const blueprintName = `agentic_${label.toLowerCase().replace(/[^a-z0-9]+/g, '_')}_${Date.now()}`;
  const serverDef: Record<string, unknown> = {
    tables: definition.tables.map((t) => ({
      ref: t.ref,
      table_name: t.table_name,
      nodes: t.nodes,
      fields: t.fields,
      grant_roles: t.grant_roles,
      grants: t.grants,
      policies: t.policies,
    })),
    relations: definition.relations,
    indexes: definition.indexes ?? [],
    full_text_searches: definition.full_text_searches ?? [],
  };

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
  const blueprintId = bpResult?.createBlueprint?.blueprint?.id;
  if (!blueprintId) throw new Error('Failed to create blueprint record');

  console.log(`   Blueprint: ${blueprintId}`);

  // 3. Execute all 4 phases server-side via constructBlueprint mutation
  const constructResult = await withRetry(() =>
    sdk.mutation.constructBlueprint(
      { input: { blueprintId } },
      { select: { result: true } }
    ).unwrap()
  );

  const refMapJson = constructResult?.constructBlueprint?.result;
  if (!refMapJson) {
    // Check blueprint status for error details
    const bpCheck = await sdk.blueprint.findOne({
      id: blueprintId,
      select: { status: true, errorDetails: true },
    }).unwrap();
    throw new Error(`constructBlueprint failed: ${bpCheck?.blueprint?.errorDetails ?? 'unknown error'}`);
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
