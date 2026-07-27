-- Deploy schemas/metaschema_modules_public/tables/relation_provision/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.relation_provision (
    id uuid PRIMARY KEY DEFAULT uuidv7(),

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

    api_required boolean NOT NULL DEFAULT false,

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
    -- Index creation on FK fields
    -- =========================================================================

    create_index boolean NOT NULL DEFAULT true,

    -- =========================================================================
    -- ManyToMany: API visibility (PostGraphile v5 @behavior +manyToMany)
    -- =========================================================================

    expose_in_api boolean NOT NULL DEFAULT true,

    -- =========================================================================
    -- ManyToMany: field creation (forwarded to provision_table)
    -- =========================================================================

    nodes jsonb NOT NULL DEFAULT '[]',

    -- =========================================================================
    -- ManyToMany: grants (forwarded to provision_table)
    -- =========================================================================

    grants jsonb NOT NULL DEFAULT '[]',

    -- =========================================================================
    -- ManyToMany: RLS policies (forwarded to secure_table_provision)
    -- =========================================================================

    policies jsonb NOT NULL DEFAULT '[]',

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
    'The type of relation to create. Uses SuperCase naming:
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

COMMENT ON COLUMN metaschema_modules_public.relation_provision.api_required IS
    'Whether the FK field should be required at the API level even though it is nullable at the database level. Defaults to false.
     When true and is_required is false, the field is created as nullable (allowing SET NULL cascade) but a @requiredInput smart tag is added so PostGraphile treats it as non-null in create/update input types.
     When is_required is true, api_required is ignored (the field is already required at both levels).
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

COMMENT ON COLUMN metaschema_modules_public.relation_provision.create_index IS
    'Whether to create a btree index on FK fields created by this relation. Defaults to true.
     PostgreSQL does not automatically index foreign key columns (only the referenced PK side is indexed).
     Without indexes on FK columns, JOINs, CASCADE deletes, and RLS policy lookups perform sequential scans.
     - RelationBelongsTo: creates an index on the FK field on the source table.
     - RelationHasMany: creates an index on the FK field on the target table.
     - RelationHasOne: skipped — the unique constraint already creates an implicit index.
     - RelationManyToMany: creates indexes on both FK fields on the junction table.
     Set to false only for very small tables or write-heavy tables where index maintenance cost outweighs read performance.';

-- =============================================================================
-- ManyToMany: API visibility
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.expose_in_api IS
    'For RelationManyToMany: whether to expose the M:N shortcut fields in the GraphQL API. Defaults to true.
     When true, sets @behavior +manyToMany on the junction table smart_tags so PostGraphile generates
     clean M:N connection fields (e.g., event.contacts instead of event.contactEventsByEventId).
     When false (or toggled off via UPDATE), the behavior tag is removed and the M:N fields disappear from GraphQL.
     Toggling is supported: UPDATE expose_in_api to true/false and the smart tag is added/removed automatically.
     Ignored for RelationBelongsTo/RelationHasOne/RelationHasMany.';

-- =============================================================================
-- ManyToMany: field creation (forwarded to secure_table_provision)
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.nodes IS
    'For RelationManyToMany: array of node objects to apply to the junction table. Each element is a jsonb object with a required "$type" key and an optional "data" key. Forwarded to provision_table as-is. The trigger does not interpret or validate this value.
     Examples: [{"$type": "DataId"}, {"$type": "DataTimestamps"}, {"$type": "DataDirectOwner", "data": {"owner_field_name": "author_id"}}].
     Defaults to ''[]'' (no node processing beyond the FK fields and composite key if use_composite_key is true).
     Ignored for RelationBelongsTo/RelationHasOne/RelationHasMany.';

-- =============================================================================
-- ManyToMany: grants (forwarded to secure_table_provision)
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.grants IS
    'For RelationManyToMany: array of grant objects for the junction table. Forwarded to provision_table as-is. Each element is a jsonb object with keys: "roles" (text[], required), "privileges" (jsonb[], required — array of [privilege, columns] tuples). Example: [{"roles":["authenticated"],"privileges":[["select","*"],["insert","*"],["delete","*"]]}]. Defaults to ''[]'' (no grants). Ignored for RelationBelongsTo/RelationHasOne.';

-- =============================================================================
-- ManyToMany: RLS policies (forwarded to secure_table_provision)
-- =============================================================================

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policies IS
    'For RelationManyToMany: array of policy objects for the junction table. Forwarded to provision_table as-is. Each element is a jsonb object with keys: "$type" (text, required — the Authz* policy generator type), "data" (jsonb, optional — opaque config), "privileges" (text[], optional — e.g. ["select","insert"]; if omitted, derived from grants[] privilege verbs), "policy_role" (text, optional — falls back to first role in first grants[] entry, or ''authenticated''), "permissive" (boolean, optional, defaults to true), "policy_name" (text, optional). Supports multiple policies per row.
     Example: [{"$type": "AuthzEntityMembership", "data": {"entity_field": "entity_id", "membership_type": 2}, "privileges": ["select", "insert", "delete"]}].
     Defaults to ''[]'' (no policies — the junction table will have RLS enabled but no policies unless added separately).
     Ignored for RelationBelongsTo/RelationHasOne/RelationHasMany.';

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

CREATE INDEX relation_provision_database_id_idx ON metaschema_modules_public.relation_provision ( database_id );
CREATE INDEX relation_provision_relation_type_idx ON metaschema_modules_public.relation_provision ( relation_type );
CREATE INDEX relation_provision_source_table_id_idx ON metaschema_modules_public.relation_provision ( source_table_id );
CREATE INDEX relation_provision_target_table_id_idx ON metaschema_modules_public.relation_provision ( target_table_id );

COMMIT;
