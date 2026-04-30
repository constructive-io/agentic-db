/**
 * blueprint.ts — Blueprint provision engine
 *
 * Types are imported from node-type-registry (generated from the
 * node type source of truth). The GraphQL API accepts plain JSONB;
 * these types provide client-side autocomplete and validation.
 *
 * Phases (server-side):
 *   1. Tables (with fields, nodes, policies, grants)
 *   2. Relations (HasMany, BelongsTo, ManyToMany)
 *   3. Indexes (HNSW, BM25, B-tree, GIN, GIST, trigram)
 *   4. Full-text search (TSVector weighted multi-field)
 */

import type {
  BlueprintDefinition as BaseBlueprintDefinition,
  BlueprintTable as BaseBlueprintTable,
  BlueprintNode,
  BlueprintRelation as BaseBlueprintRelation,
  BlueprintField,
  BlueprintIndex as BaseBlueprintIndex,
  BlueprintFullTextSearch,
} from 'node-type-registry';

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  type PlatformClient,
} from './helpers';

// ---------------------------------------------------------------------------
// Blueprint types with client-side cross-ref support
// ---------------------------------------------------------------------------
//
// The canonical node-type-registry blueprint shapes require concrete
// table_name / source_table / target_table strings. In provision schemas we
// want to declare tables and cross-references by a local ref ID so schemas
// can be written in any order — provisionBlueprint then resolves
// ref → table_name before sending to construct_blueprint.
//
// These extended types add ref / table_ref / source_ref / target_ref as
// optional siblings of the canonical fields.

export type BlueprintTable = BaseBlueprintTable & {
  /** Client-side cross-ref ID; resolved to `table_name` by provisionBlueprint. */
  ref?: string;
};

export type BlueprintIndex = Omit<BaseBlueprintIndex, 'table_name'> & {
  table_name?: string;
  /** Client-side cross-ref to a table by its `ref`; resolved to `table_name`. */
  table_ref?: string;
};

type AddRelationRefs<T> = T extends {
  source_table: string;
  target_table: string;
}
  ? Omit<T, 'source_table' | 'target_table'> & {
      source_table?: string;
      target_table?: string;
      /** Client-side cross-ref; resolved to `source_table` by provisionBlueprint. */
      source_ref?: string;
      /** Client-side cross-ref; resolved to `target_table` by provisionBlueprint. */
      target_ref?: string;
    }
  : T;

export type BlueprintRelation = AddRelationRefs<BaseBlueprintRelation>;

export type BlueprintDefinition = Omit<
  BaseBlueprintDefinition,
  'tables' | 'relations' | 'indexes'
> & {
  tables: BlueprintTable[];
  relations?: BlueprintRelation[];
  indexes?: BlueprintIndex[];
};

// Re-export passthrough blueprint types for consumers
export type { BlueprintNode, BlueprintField, BlueprintFullTextSearch };

/** Standard M:N junction table options (timestamps only, no grants/roles) */
export const M2M_JUNCTION_OPTS = {};

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

  // Build ref -> table_name lookup so we can resolve source_ref/target_ref
  const refToTable = new Map<string, string>();
  for (const t of definition.tables) {
    if (t.ref && t.table_name) refToTable.set(t.ref, t.table_name);
  }

  // Resolve relations: convert source_ref/target_ref to source_table/target_table
  const resolvedRelations = (definition.relations ?? []).map((r) => {
    const rel = { ...r } as Record<string, unknown>;
    if ('source_ref' in rel && !('source_table' in rel)) {
      const tableName = refToTable.get(rel.source_ref as string);
      if (tableName) {
        rel.source_table = tableName;
        delete rel.source_ref;
      }
    }
    if ('target_ref' in rel && !('target_table' in rel)) {
      const tableName = refToTable.get(rel.target_ref as string);
      if (tableName) {
        rel.target_table = tableName;
        delete rel.target_ref;
      }
    }
    return rel;
  });

  // Resolve indexes: convert table_ref to table_name
  const resolvedIndexes = (definition.indexes ?? []).map((idx) => {
    const index = { ...idx } as Record<string, unknown>;
    if ('table_ref' in index && !('table_name' in index)) {
      const tableName = refToTable.get(index.table_ref as string);
      if (tableName) {
        index.table_name = tableName;
        delete index.table_ref;
      }
    }
    return index;
  });

  const serverDef: Record<string, unknown> = {
    tables: definition.tables.map((t): Record<string, unknown> => ({
      ref: t.ref,
      table_name: t.table_name,
      nodes: t.nodes,
      fields: t.fields,
      // Explicitly disable security — prevents construct_blueprint from
      // defaulting grant_roles to ['authenticated'] which would generate
      // invalid GRANT SQL when the grants array is empty.
      grant_roles: [] as string[],
      grants: [] as unknown[],
      policies: [] as unknown[],
      use_rls: false,
    })),
    relations: resolvedRelations.map((r): Record<string, unknown> => ({
      ...r,
      grant_roles: [] as string[],
      grant_privileges: [] as unknown[],
      policies: [] as unknown[],
    })),
    indexes: resolvedIndexes,
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

  // 3. Execute all 4 phases server-side via direct SQL call
  //    (bypasses GraphQL mutation timeout for large blueprints)
  const { Pool } = await import('pg');
  const pool = new Pool({ database: process.env.PGDATABASE || 'constructive' });
  try {
    await pool.query('SET statement_timeout = \'600s\'');
    const { rows: constructRows } = await pool.query(
      'SELECT metaschema_modules_public.construct_blueprint($1::uuid) as construction_id',
      [blueprintId]
    );
    const constructionId = constructRows[0]?.construction_id;

    if (!constructionId) {
      // construct_blueprint returns NULL on failure; read error from DB
      const { rows } = await pool.query(
        `SELECT status, error_details FROM metaschema_modules_public.blueprint_construction
         WHERE blueprint_id = $1 ORDER BY created_at DESC LIMIT 1`,
        [blueprintId]
      );
      const errMsg = rows[0]?.error_details ?? rows[0]?.status ?? 'unknown error';
      throw new Error(`constructBlueprint failed for blueprint ${blueprintId}: ${errMsg}`);
    }

    // 4. Read ref_map (table_map) from the construction record
    const { rows: mapRows } = await pool.query(
      `SELECT table_map FROM metaschema_modules_public.blueprint_construction WHERE id = $1`,
      [constructionId]
    );
    const tableMap = mapRows[0]?.table_map ?? {};
    const refMap = new Map<string, string>();
    for (const [ref, tableId] of Object.entries(tableMap as Record<string, string>)) {
      refMap.set(ref, tableId);
    }

    // Log results
    const tableCount = definition.tables.length;
    const relCount = definition.relations?.length ?? 0;
    const idxCount = definition.indexes?.length ?? 0;
    const ftsCount = definition.full_text_searches?.length ?? 0;
    console.log(`   \u2713 ${tableCount} tables, ${relCount} relations, ${idxCount} indexes, ${ftsCount} FTS configs`);
    console.log(`   ref_map: ${refMap.size} entries\n`);

    return refMap;
  } finally {
    await pool.end();
  }
}
