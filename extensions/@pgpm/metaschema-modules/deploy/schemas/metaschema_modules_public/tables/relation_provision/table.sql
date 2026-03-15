-- Deploy schemas/metaschema_modules_public/tables/relation_provision/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.relation_provision (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),

    database_id uuid NOT NULL,

    -- =========================================================================
    -- Relation type and tables
    -- =========================================================================

    relation_type text NOT NULL CHECK (relation_type IN (
        'RelationBelongsTo', 'RelationHasOne', 'RelationHasMany', 'RelationManyToMany'
    )),

    source_table_id uuid NOT NULL,

    target_table_id uuid NOT NULL,

    -- =========================================================================
    -- BelongsTo / HasOne / HasMany: FK field config
    -- =========================================================================

    field_name text DEFAULT NULL,

    delete_action text DEFAULT NULL,

    is_required boolean NOT NULL DEFAULT true,

    -- =========================================================================
    -- ManyToMany: junction table identity
    -- =========================================================================

    junction_table_id uuid NOT NULL DEFAULT uuid_nil(),

    junction_table_name text DEFAULT NULL,

    junction_schema_id uuid DEFAULT NULL,

    source_field_name text DEFAULT NULL,

    target_field_name text DEFAULT NULL,

    -- =========================================================================
    -- ManyToMany: junction table primary key strategy
    -- =========================================================================

    use_composite_key boolean NOT NULL DEFAULT false,

    -- =========================================================================
    -- ManyToMany: field creation (forwarded to secure_table_provision)
    -- =========================================================================

    node_type text DEFAULT NULL,

    node_data jsonb NOT NULL DEFAULT '{}',

    -- =========================================================================
    -- ManyToMany: grants (forwarded to secure_table_provision)
    -- =========================================================================

    grant_roles text[] NOT NULL DEFAULT ARRAY['authenticated'],

    grant_privileges jsonb NOT NULL DEFAULT '[["select","*"],["insert","*"],["delete","*"]]',

    -- =========================================================================
    -- ManyToMany: RLS policies (forwarded to secure_table_provision)
    -- =========================================================================

    policy_type text DEFAULT NULL,

    policy_privileges text[] DEFAULT NULL,

    policy_role text DEFAULT NULL,

    policy_permissive boolean NOT NULL DEFAULT true,

    policy_name text DEFAULT NULL,

    policy_data jsonb NOT NULL DEFAULT '{}',

    -- =========================================================================
    -- Output columns (populated by the trigger, not set by callers)
    -- =========================================================================

    out_field_id uuid DEFAULT NULL,

    out_junction_table_id uuid DEFAULT NULL,

    out_source_field_id uuid DEFAULT NULL,

    out_target_field_id uuid DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT source_table_fkey FOREIGN KEY (source_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT target_table_fkey FOREIGN KEY (target_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

-- =============================================================================
-- Table-level comment
-- =============================================================================

COMMENT ON TABLE metaschema_modules_public.relation_provision IS
    'Provisions relational structure between tables. Supports four relation types:
     - RelationBelongsTo: adds a FK field on the source table referencing the target table (child perspective: "tasks belongs to projects" -> tasks.project_id).
     - RelationHasMany: adds a FK field on the target table referencing the source table (parent perspective: "projects has many tasks" -> tasks.project_id). Inverse of BelongsTo.
     - RelationHasOne: adds a FK field with a unique constraint on the source table referencing the target table. Also supports shared-primary-key patterns where the FK field IS the primary key (set field_name to the existing PK field name).
     - RelationManyToMany: creates a junction table with FK fields to both source and target tables, delegating table creation and security to secure_table_provision.
     This is a one-and-done structural provisioner. To layer additional security onto junction tables after creation, use secure_table_provision directly.
     All operations are graceful: existing fields, FK constraints, and unique constraints are reused if found.
     The trigger never injects values the caller did not provide. All security config is forwarded to secure_table_provision as-is.';

-- =============================================================================
-- Relation type and tables
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.id IS
    'Unique identifier for this relation provision row.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.database_id IS
    'The database this relation belongs to. Required. Must match the database of both source_table_id and target_table_id.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.relation_type IS
    'The type of relation to create. Uses SuperCase naming matching the node_type_registry:
     - RelationBelongsTo: creates a FK field on source_table referencing target_table (e.g., tasks belongs to projects -> tasks.project_id). Field name auto-derived from target table.
     - RelationHasMany: creates a FK field on target_table referencing source_table (e.g., projects has many tasks -> tasks.project_id). Field name auto-derived from source table. Inverse of BelongsTo — same FK, different perspective.
     - RelationHasOne: creates a FK field + unique constraint on source_table referencing target_table (e.g., user_settings has one user -> user_settings.user_id with UNIQUE). Also supports shared-primary-key patterns (e.g., user_profiles.id = users.id) by setting field_name to the existing PK field.
     - RelationManyToMany: creates a junction table with FK fields to both tables (e.g., projects and tags -> project_tags table).
     Each relation type uses a different subset of columns on this table. Required.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.source_table_id IS
    'The source table in the relation. Required.
     - RelationBelongsTo: the table that receives the FK field (e.g., tasks in "tasks belongs to projects").
     - RelationHasMany: the parent table being referenced (e.g., projects in "projects has many tasks"). The FK field is created on the target table.
     - RelationHasOne: the table that receives the FK field + unique constraint (e.g., user_settings in "user_settings has one user").
     - RelationManyToMany: one of the two tables being joined (e.g., projects in "projects and tags"). The junction table will have a FK field referencing this table.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.target_table_id IS
    'The target table in the relation. Required.
     - RelationBelongsTo: the table being referenced by the FK (e.g., projects in "tasks belongs to projects").
     - RelationHasMany: the table that receives the FK field (e.g., tasks in "projects has many tasks").
     - RelationHasOne: the table being referenced by the FK (e.g., users in "user_settings has one user").
     - RelationManyToMany: the other table being joined (e.g., tags in "projects and tags"). The junction table will have a FK field referencing this table.';

-- =============================================================================
-- BelongsTo / HasOne / HasMany: FK field config
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.field_name IS
    'FK field name for RelationBelongsTo, RelationHasOne, and RelationHasMany.
     - RelationBelongsTo/RelationHasOne: if NULL, auto-derived from the target table name (e.g., target "projects" derives "project_id").
     - RelationHasMany: if NULL, auto-derived from the source table name (e.g., source "projects" derives "project_id").
     For RelationHasOne shared-primary-key patterns, set field_name to the existing PK field (e.g., "id") so the FK reuses it.
     Ignored for RelationManyToMany — use source_field_name/target_field_name instead.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.delete_action IS
    'FK delete action for RelationBelongsTo, RelationHasOne, and RelationHasMany. One of: c (CASCADE), r (RESTRICT), n (SET NULL), d (SET DEFAULT), a (NO ACTION). Required — the trigger raises an error if not provided. The caller must explicitly choose the cascade behavior; there is no default. Ignored for RelationManyToMany (junction FK fields always use CASCADE).';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.is_required IS
    'Whether the FK field is NOT NULL. Defaults to true.
     - RelationBelongsTo: set to false for optional associations (e.g., tasks.assignee_id that can be NULL).
     - RelationHasMany: set to false if the child can exist without a parent.
     - RelationHasOne: typically true.
     Ignored for RelationManyToMany (junction FK fields are always required).';

-- =============================================================================
-- ManyToMany: junction table identity
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.junction_table_id IS
    'For RelationManyToMany: an existing junction table to use. Defaults to uuid_nil().
     - When uuid_nil(): the trigger creates a new junction table via secure_table_provision using junction_table_name.
     - When set to a valid table UUID: the trigger skips table creation and only adds FK fields, composite key (if use_composite_key is true), and security to the existing table.
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.junction_table_name IS
    'For RelationManyToMany: name of the junction table to create or look up. If NULL, auto-derived from source and target table names using inflection_db (e.g., "projects" + "tags" derives "project_tags"). Only used when junction_table_id is uuid_nil(). Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.junction_schema_id IS
    'For RelationManyToMany: schema for the junction table. If NULL, defaults to the source table''s schema. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.source_field_name IS
    'For RelationManyToMany: FK field name on the junction table referencing the source table. If NULL, auto-derived from the source table name using inflection_db.get_foreign_key_field_name() (e.g., source table "projects" derives "project_id"). Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.target_field_name IS
    'For RelationManyToMany: FK field name on the junction table referencing the target table. If NULL, auto-derived from the target table name using inflection_db.get_foreign_key_field_name() (e.g., target table "tags" derives "tag_id"). Ignored for RelationBelongsTo/RelationHasOne.';

-- =============================================================================
-- ManyToMany: junction table primary key strategy
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.use_composite_key IS
    'For RelationManyToMany: whether to create a composite primary key from the two FK fields (source + target) on the junction table. Defaults to false.
     - When true: the trigger calls metaschema.pk() with ARRAY[source_field_id, target_field_id] to create a composite PK. No separate id column is created. This enforces uniqueness of the pair and is suitable for simple junction tables.
     - When false: no primary key is created by the trigger. The caller should provide node_type=''DataId'' to create a UUID primary key, or handle the PK strategy via a separate secure_table_provision row.
     use_composite_key and node_type=''DataId'' are mutually exclusive — using both would create two conflicting PKs.
     Ignored for RelationBelongsTo/RelationHasOne.';

-- =============================================================================
-- ManyToMany: field creation (forwarded to secure_table_provision)
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.node_type IS
    'For RelationManyToMany: which generator to invoke for field creation on the junction table. Forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value.
     Examples: DataId (creates UUID primary key), DataDirectOwner (creates owner_id field), DataEntityMembership (creates entity_id field), DataOwnershipInEntity (creates both owner_id and entity_id), DataTimestamps, DataPeoplestamps, DataPublishable, DataSoftDelete.
     NULL means no field creation beyond the FK fields (and composite key if use_composite_key is true).
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.node_data IS
    'For RelationManyToMany: configuration passed to the generator function for field creation on the junction table. Forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value.
     Only used when node_type is set. Structure varies by node_type. Examples:
     - DataId: {"field_name": "id"} (default field name is ''id'')
     - DataEntityMembership: {"entity_field_name": "entity_id", "include_id": false, "include_user_fk": true}
     - DataDirectOwner: {"owner_field_name": "owner_id"}
     Defaults to ''{}'' (empty object).
     Ignored for RelationBelongsTo/RelationHasOne.';

-- =============================================================================
-- ManyToMany: grants (forwarded to secure_table_provision)
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.grant_roles IS
    'For RelationManyToMany: database roles to grant privileges to on the junction table. Forwarded to secure_table_provision as-is. Supports multiple roles, e.g. ARRAY[''authenticated'', ''admin'']. Each role receives all privileges defined in grant_privileges. Defaults to ARRAY[''authenticated'']. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.grant_privileges IS
    'For RelationManyToMany: privilege grants for the junction table. Forwarded to secure_table_provision as-is. Format: array of [privilege, columns] tuples. Examples: [["select","*"],["insert","*"]] for full access, or [["update",["name","bio"]]] for column-level grants. "*" means all columns. Defaults to select/insert/delete for all columns. Ignored for RelationBelongsTo/RelationHasOne.';

-- =============================================================================
-- ManyToMany: RLS policies (forwarded to secure_table_provision)
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_type IS
    'For RelationManyToMany: RLS policy type for the junction table. Forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value.
     Examples: AuthzEntityMembership, AuthzMembership, AuthzAllowAll, AuthzDirectOwner, AuthzOrgHierarchy.
     NULL means no policy is created — the junction table will have RLS enabled but no policies (unless added separately via secure_table_provision).
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_privileges IS
    'For RelationManyToMany: privileges the policy applies to, e.g. ARRAY[''select'',''insert'',''delete'']. Forwarded to secure_table_provision as-is. NULL means privileges are derived from the grant_privileges verbs by secure_table_provision. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_role IS
    'For RelationManyToMany: database role the policy targets, e.g. ''authenticated''. Forwarded to secure_table_provision as-is. NULL means secure_table_provision falls back to the first role in grant_roles. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_permissive IS
    'For RelationManyToMany: whether the policy is PERMISSIVE (true) or RESTRICTIVE (false). Forwarded to secure_table_provision as-is. Defaults to true. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_name IS
    'For RelationManyToMany: custom suffix for the generated policy name. Forwarded to secure_table_provision as-is. When NULL and policy_type is set, secure_table_provision auto-derives a suffix from policy_type (e.g. AuthzDirectOwner becomes direct_owner, producing policy names like auth_sel_direct_owner). When explicitly set, used as-is. This ensures multiple policies on the same junction table do not collide. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_data IS
    'For RelationManyToMany: opaque policy configuration forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value. Structure varies by policy_type. Examples:
     - AuthzEntityMembership: {"entity_field": "entity_id", "membership_type": 2}
     - AuthzDirectOwner: {"owner_field": "owner_id"}
     - AuthzMembership: {"membership_type": 2}
     Defaults to ''{}'' (empty object).
     Ignored for RelationBelongsTo/RelationHasOne.';

-- =============================================================================
-- Output columns
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_field_id IS
    'Output column for RelationBelongsTo/RelationHasOne/RelationHasMany: the UUID of the FK field created (or found). For BelongsTo/HasOne this is on the source table; for HasMany this is on the target table. Populated by the trigger. NULL for RelationManyToMany. Callers should not set this directly.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_junction_table_id IS
    'Output column for RelationManyToMany: the UUID of the junction table created (or found). Populated by the trigger. NULL for RelationBelongsTo/RelationHasOne. Callers should not set this directly.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_source_field_id IS
    'Output column for RelationManyToMany: the UUID of the FK field on the junction table referencing the source table. Populated by the trigger. NULL for RelationBelongsTo/RelationHasOne. Callers should not set this directly.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_target_field_id IS
    'Output column for RelationManyToMany: the UUID of the FK field on the junction table referencing the target table. Populated by the trigger. NULL for RelationBelongsTo/RelationHasOne. Callers should not set this directly.';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.relation_provision IS E'@omit manyToMany';
COMMENT ON CONSTRAINT source_table_fkey ON metaschema_modules_public.relation_provision IS E'@omit manyToMany';
COMMENT ON CONSTRAINT target_table_fkey ON metaschema_modules_public.relation_provision IS E'@omit manyToMany';

CREATE INDEX relation_provision_database_id_idx ON metaschema_modules_public.relation_provision ( database_id );
CREATE INDEX relation_provision_relation_type_idx ON metaschema_modules_public.relation_provision ( relation_type );
CREATE INDEX relation_provision_source_table_id_idx ON metaschema_modules_public.relation_provision ( source_table_id );
CREATE INDEX relation_provision_target_table_id_idx ON metaschema_modules_public.relation_provision ( target_table_id );

COMMIT;
