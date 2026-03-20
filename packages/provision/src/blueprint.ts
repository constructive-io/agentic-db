/**
 * blueprint.ts — Declarative blueprint definition types and provision helper
 *
 * Mirrors the constructive-db blueprint definition format:
 *   { tables: [...], relations: [...] }
 *
 * Each schema module exports a BlueprintDefinition instead of imperative
 * createOrgTable/addField/relationProvision calls. The provisionBlueprint()
 * function processes the definition using the existing SDK.
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

export interface TableDef {
  /** Local reference name used in relations (e.g. 'contacts') */
  ref: string;
  /** Actual table name in the database */
  table_name: string;
  /** Node types: first creates the table, rest augment it */
  nodes: (string | { $type: string; data?: Record<string, unknown> })[];
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

export interface BlueprintDefinition {
  tables: TableDef[];
  relations: RelationDef[];
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
export function orgTable(ref: string, fields: FieldDef[]): TableDef {
  return {
    ref,
    table_name: ref,
    nodes: ORG_NODES,
    fields,
    grant_roles: ['authenticated'],
    grants: CRUD_GRANTS,
    policies: [ORG_POLICY],
  };
}

/** Embedding fields shared by most tables */
export const EMBEDDING_FIELDS: FieldDef[] = [
  { name: 'embedding_text', type: 'text' },
  { name: 'embedding', type: 'vector(768)' },
];

/** Standard chunk table fields */
const CHUNK_FIELDS: FieldDef[] = [
  { name: 'chunk_index', type: 'int', is_required: true },
  { name: 'content', type: 'text', is_required: true },
  { name: 'embedding_text', type: 'text' },
  { name: 'embedding', type: 'vector(768)' },
];

/**
 * Create a chunk table definition for a parent table.
 * Convention: parent "contacts" → chunk table "contact_chunks"
 */
export function chunkTable(parentRef: string): TableDef {
  // Derive chunk table name: "contacts" → "contact_chunks"
  const singular = parentRef.replace(/s$/, '');
  const chunkRef = `${singular}_chunks`;
  return orgTable(chunkRef, CHUNK_FIELDS);
}

/**
 * Create a HasMany relation (parent → chunks, CASCADE delete).
 */
export function hasManyChunks(parentRef: string): RelationDef {
  const singular = parentRef.replace(/s$/, '');
  return {
    $type: 'RelationHasMany',
    source_ref: parentRef,
    target_ref: `${singular}_chunks`,
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
// Provision engine — processes a BlueprintDefinition via the SDK
// ---------------------------------------------------------------------------

const databaseId = requireDatabaseId();

/**
 * Provision a blueprint definition using the constructive SDK.
 *
 * Phase 1: Create all tables (with fields, nodes, policies, grants)
 * Phase 2: Create all relations (HasMany, BelongsTo, ManyToMany)
 *
 * Returns a ref_map of { ref → tableId } for cross-schema references.
 */
export async function provisionBlueprint(
  definition: BlueprintDefinition,
  label: string,
  client?: PlatformClient
): Promise<Map<string, string>> {
  const sdk = client ?? createPlatformClient();
  const refMap = new Map<string, string>();

  console.log(`\n📋 ${label}\n`);

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

    refMap.set(table.ref, tableId);
    console.log(`   ✓ ${table.table_name} (${table.fields.length} fields)`);
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
    console.log(`   ↳ ${label}`);
  }

  return refMap;
}
