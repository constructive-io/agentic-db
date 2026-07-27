-- Deploy schemas/metaschema_modules_public/tables/secure_table_provision/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.secure_table_provision (
    id uuid PRIMARY KEY DEFAULT uuidv7(),

    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    table_id uuid NOT NULL DEFAULT uuid_nil(),

    table_name text DEFAULT NULL,

    nodes jsonb NOT NULL DEFAULT '[]',

    use_rls boolean NOT NULL DEFAULT true,

    fields jsonb[] NOT NULL DEFAULT '{}',

    grants jsonb NOT NULL DEFAULT '[]',

    policies jsonb NOT NULL DEFAULT '[]',

    out_fields uuid[] DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.secure_table_provision IS
    'Provisions security, fields, grants, and policies onto a table. Each row can independently: (1) create fields via nodes[] array (supporting multiple Data* modules per row), (2) grant privileges via grants[] array (supporting per-role privilege targeting), (3) create RLS policies via policies[] array (supporting multiple Authz* policies per row). Multiple rows can target the same table to compose different concerns. All three concerns are optional and independent.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.id IS
    'Unique identifier for this provision row.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.database_id IS
    'The database this provision belongs to. Required.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.schema_id IS
    'Target schema for the table. Defaults to uuid_nil(); the trigger resolves this to the app_public schema if not explicitly provided.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.table_id IS
    'Target table to provision. Defaults to uuid_nil(); the trigger creates or resolves the table via table_name if not explicitly provided.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.table_name IS
    'Name of the target table. Used to create or look up the table when table_id is not provided. If omitted, it is backfilled from the resolved table.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.nodes IS
    'Array of node objects to apply to the table. Each element is a jsonb object with a required "$type" key (one of: DataId, DataDirectOwner, DataEntityMembership, DataOwnershipInEntity, DataTimestamps, DataPeoplestamps, DataPublishable, DataSoftDelete, DataEmbedding, DataFullTextSearch, DataSlug, etc.) and an optional "data" key containing generator-specific configuration. Supports multiple nodes per row, matching the blueprint definition format. Example: [{"$type": "DataId"}, {"$type": "DataTimestamps"}, {"$type": "DataDirectOwner", "data": {"owner_field_name": "author_id"}}]. Defaults to ''[]'' (no node processing).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.use_rls IS
    'If true and Row Level Security is not yet enabled on the target table, enable it. Automatically set to true by the trigger when policies[] is non-empty. Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.fields IS
    'PostgreSQL array of jsonb field definition objects to create on the target table. Each object has keys: "name" (text, required), "type" (text, required), "default" (text, optional), "is_required" (boolean, optional, defaults to false), "min" (float, optional), "max" (float, optional), "regexp" (text, optional), "index" (boolean, optional, defaults to false — creates a btree index on the field). min/max generate CHECK constraints: for text/citext they constrain character_length, for integer/float types they constrain the value. regexp generates a CHECK (col ~ pattern) constraint for text/citext. Fields are created via metaschema.create_field() after any node_type generator runs, and their IDs are appended to out_fields. Example: ARRAY[''{"name":"username","type":"citext","max":256,"regexp":"^[a-z0-9_]+$"}''::jsonb, ''{"name":"score","type":"integer","min":0,"max":100}''::jsonb]. Defaults to ''{}'' (no additional fields).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grants IS
    'Array of grant objects defining table privileges. Each element is a jsonb object with keys: "roles" (text[], required — database roles to grant to, e.g. ["authenticated","admin"]), "privileges" (jsonb[], required — array of [privilege, columns] tuples, e.g. [["select","*"],["insert","*"]]). "*" means all columns; an array means column-level grant. Supports per-role privilege targeting: different grant entries can target different roles with different privileges. Example: [{"roles":["authenticated"],"privileges":[["select","*"]]},{"roles":["admin"],"privileges":[["insert","*"],["update","*"],["delete","*"]]}]. Defaults to ''[]'' (no grants). When policies[] omit explicit privileges/policy_role, they fall back to the verbs and first role from grants[].';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policies IS
    'Array of policy objects to create on the target table. Each element is a jsonb object with keys: "$type" (text, required — the Authz* policy generator type, e.g. AuthzEntityMembership, AuthzMembership, AuthzDirectOwner, AuthzPublishable, AuthzAllowAll), "data" (jsonb, optional — opaque configuration passed to metaschema.create_policy(), structure varies by type), "privileges" (text[], optional — privileges the policy applies to, e.g. ["select","insert"]; if omitted, derived from grants[] privilege verbs), "policy_role" (text, optional — role the policy targets; if omitted, falls back to first role in first grants[] entry, or ''authenticated'' if no grants), "permissive" (boolean, optional — PERMISSIVE or RESTRICTIVE; defaults to true), "policy_name" (text, optional — custom suffix for the generated policy name; if omitted, auto-derived from $type by stripping Authz prefix). Supports multiple policies per row. Example: [{"$type": "AuthzEntityMembership", "data": {"entity_field": "owner_id", "membership_type": 3}, "privileges": ["select", "insert"]}, {"$type": "AuthzDirectOwner", "data": {"entity_field": "actor_id"}, "privileges": ["update", "delete"]}]. Defaults to ''[]'' (no policies created). When non-empty, the trigger automatically enables RLS.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.out_fields IS
    'Output column populated by the trigger after field creation. Contains the UUIDs of the metaschema fields created on the target table by this provision row''s nodes. NULL when nodes is empty or before the trigger runs. Callers should not set this directly.';


CREATE INDEX secure_table_provision_database_id_idx ON metaschema_modules_public.secure_table_provision ( database_id );
CREATE INDEX secure_table_provision_table_id_idx ON metaschema_modules_public.secure_table_provision ( table_id );

COMMIT;
