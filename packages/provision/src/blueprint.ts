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
  BlueprintDefinition,
  BlueprintTable,
  BlueprintNode,
  BlueprintRelation,
  BlueprintField,
  BlueprintIndex,
  BlueprintFullTextSearch,
} from 'node-type-registry';

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  type PlatformClient,
} from './helpers';

// Re-export blueprint types for consumers
export type {
  BlueprintDefinition,
  BlueprintTable,
  BlueprintNode,
  BlueprintRelation,
  BlueprintField,
  BlueprintIndex,
  BlueprintFullTextSearch,
};

// ---------------------------------------------------------------------------
// Shared constants — standard org-scoped table defaults
// ---------------------------------------------------------------------------

/** Standard table nodes (DataTimestamps only — no entity membership) */
export const ORG_NODES: BlueprintTable['nodes'] = [
  { $type: 'DataTimestamps', data: { include_id: false } },
];

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
  const serverDef: Record<string, unknown> = {
    tables: definition.tables.map((t) => ({
      ref: t.ref,
      table_name: t.table_name,
      nodes: t.nodes,
      fields: t.fields,
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
  const relCount = definition.relations?.length ?? 0;
  const idxCount = definition.indexes?.length ?? 0;
  const ftsCount = definition.full_text_searches?.length ?? 0;
  console.log(`   \u2713 ${tableCount} tables, ${relCount} relations, ${idxCount} indexes, ${ftsCount} FTS configs`);
  console.log(`   ref_map: ${refMap.size} entries\n`);

  return refMap;
}
