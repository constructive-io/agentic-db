-- Deploy schemas/metaschema_modules_public/tables/secure_table_provision/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.secure_table_provision (
    id uuid PRIMARY KEY DEFAULT uuidv7(),

    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    table_id uuid NOT NULL DEFAULT uuid_nil(),

    table_name text DEFAULT NULL,

    node_type text DEFAULT NULL,

    use_rls boolean NOT NULL DEFAULT true,

    node_data jsonb NOT NULL DEFAULT '{}',

    fields jsonb[] NOT NULL DEFAULT '{}',

    grant_roles text[] NOT NULL DEFAULT ARRAY['authenticated'],

    grant_privileges jsonb[] NOT NULL DEFAULT '{}',

    policy_type text DEFAULT NULL,

    policy_privileges text[] DEFAULT NULL,

    policy_role text DEFAULT NULL,

    policy_permissive boolean NOT NULL DEFAULT true,

    policy_name text DEFAULT NULL,

    policy_data jsonb NOT NULL DEFAULT '{}',

    out_fields uuid[] DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.secure_table_provision IS
    'Provisions security, fields, grants, and policies onto a table. Each row can independently: (1) create fields via node_type, (2) grant privileges via grant_privileges, (3) create RLS policies via policy_type. Multiple rows can target the same table to compose different concerns. All three concerns are optional and independent.';

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

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.node_type IS
    'Which generator to invoke for field creation. One of: DataId, DataDirectOwner, DataEntityMembership, DataOwnershipInEntity, DataTimestamps, DataPeoplestamps, DataPublishable, DataSoftDelete. NULL means no field creation — the row only provisions grants and/or policies.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.use_rls IS
    'If true and Row Level Security is not yet enabled on the target table, enable it. Automatically set to true by the trigger when policy_type is provided. Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.node_data IS
    'Configuration passed to the generator function for field creation (only used when node_type is set). Known keys include: field_name (text, default ''id'') for DataId, owner_field_name (text, default ''owner_id'') for DataDirectOwner/DataOwnershipInEntity, entity_field_name (text, default ''entity_id'') for DataEntityMembership/DataOwnershipInEntity, include_id (boolean, default true) for most node_types, include_user_fk (boolean, default true) to add FK to users table, create_index (boolean, default true) to create btree indexes on FK fields for join and cascade performance. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.fields IS
    'PostgreSQL array of jsonb field definition objects to create on the target table. Each object has keys: "name" (text, required), "type" (text, required), "default" (text, optional), "is_required" (boolean, optional, defaults to false), "min" (float, optional), "max" (float, optional), "regexp" (text, optional), "index" (boolean, optional, defaults to false — creates a btree index on the field). min/max generate CHECK constraints: for text/citext they constrain character_length, for integer/float types they constrain the value. regexp generates a CHECK (col ~ pattern) constraint for text/citext. Fields are created via metaschema.create_field() after any node_type generator runs, and their IDs are appended to out_fields. Example: ARRAY[''{"name":"username","type":"citext","max":256,"regexp":"^[a-z0-9_]+$"}''::jsonb, ''{"name":"score","type":"integer","min":0,"max":100}''::jsonb]. Defaults to ''{}'' (no additional fields).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_roles IS
    'Database roles to grant privileges to. Supports multiple roles, e.g. ARRAY[''authenticated'', ''admin'']. Each role receives all privileges defined in grant_privileges. Defaults to ARRAY[''authenticated''].';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_privileges IS
    'PostgreSQL array of jsonb [privilege, columns] tuples defining table grants. Examples: ARRAY[''["select","*"]''::jsonb, ''["insert","*"]''::jsonb] for full access, or ARRAY[''["update",["name","bio"]]''::jsonb] for column-level grants. "*" means all columns; an array means column-level grant. Defaults to ''{}'' (no grants). Type safety is enforced by PostgreSQL at INSERT time.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_type IS
    'Policy generator type, e.g. ''AuthzEntityMembership'', ''AuthzMembership'', ''AuthzAllowAll''. NULL means no policy is created. When set, the trigger automatically enables RLS on the target table.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_privileges IS
    'Privileges the policy applies to, e.g. ARRAY[''select'',''update'']. NULL means privileges are derived from the grant_privileges verbs.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_role IS
    'Role the policy targets. NULL means it falls back to the first role in grant_roles.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_permissive IS
    'Whether the policy is PERMISSIVE (true) or RESTRICTIVE (false). Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_name IS
    'Custom suffix for the generated policy name. When NULL and policy_type is set, the trigger auto-derives a suffix from policy_type by stripping the Authz prefix and underscoring the remainder (e.g. AuthzDirectOwner becomes direct_owner, producing policy names like auth_sel_direct_owner). When explicitly set, the value is passed through as-is to metaschema.create_policy name parameter. This ensures multiple policies on the same table do not collide (e.g. AuthzDirectOwner + AuthzPublishable each get unique names).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_data IS
    'Opaque configuration passed through to metaschema.create_policy(). Structure varies by policy_type and is not interpreted by this trigger. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.out_fields IS
    'Output column populated by the trigger after field creation. Contains the UUIDs of the metaschema fields created on the target table by this provision row''s generator. NULL when node_type is NULL or before the trigger runs. Callers should not set this directly.';


CREATE INDEX secure_table_provision_database_id_idx ON metaschema_modules_public.secure_table_provision ( database_id );
CREATE INDEX secure_table_provision_table_id_idx ON metaschema_modules_public.secure_table_provision ( table_id );
CREATE INDEX secure_table_provision_node_type_idx ON metaschema_modules_public.secure_table_provision ( node_type );

COMMIT;
