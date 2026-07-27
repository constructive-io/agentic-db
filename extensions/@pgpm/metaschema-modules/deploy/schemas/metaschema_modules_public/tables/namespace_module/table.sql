-- Deploy schemas/metaschema_modules_public/tables/namespace_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.namespace_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table(s), recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
    -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
    entity_field text,
    -- Schema references (if uuid_nil, resolved from schema name or default)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional schema name overrides (used when schema IDs are not provided)
    public_schema_name text,
    private_schema_name text,

    -- Generated table IDs (populated by the generator)
    namespaces_table_id uuid NOT NULL DEFAULT uuid_nil(),
    namespace_events_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (input to the generator)
    namespaces_table_name text NOT NULL DEFAULT 'namespaces',
    namespace_events_table_name text NOT NULL DEFAULT 'namespace_events',

    -- API routing (get-or-create: if set, schema is added to this API; if NULL, no API is added)
    api_name text,
    private_api_name text,

    -- Scope: determines the security level for this module instance.
    -- Resolved to a membership_type integer at trigger time via membership_types table.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    -- Override to create multiple module instances at the same scope.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level namespaces, entity table for entity-scoped namespaces)
    entity_table_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope).
    -- When provided, replaces the default policy set in apply_namespace_security.
    -- Accepts a JSON array of policy objects:
    --   {"$type": "AuthzEntityMembership", "privileges": ["select", "update"], "data": {...}}
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config.
    -- Keys are table keys (namespaces, namespace_events).
    -- When a key is present, the module trigger skips default security for that table;
    -- secure_table_provision applies the custom grants/policies instead.
    provisions jsonb NULL,

    -- Default permissions: permission names auto-granted to new members.
    -- NULL uses the module's built-in defaults; explicit array overrides them.
    default_permissions text[] DEFAULT NULL,

    -- Constraints
    CONSTRAINT namespace_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT namespace_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT namespace_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT namespace_module_namespaces_table_fkey FOREIGN KEY (namespaces_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT namespace_module_events_table_fkey FOREIGN KEY (namespace_events_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT namespace_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX namespace_module_database_id_idx ON metaschema_modules_public.namespace_module ( database_id );

-- Unique constraint: one namespace module per database per scope (K8s infra: scopes never share).
CREATE UNIQUE INDEX namespace_module_unique_scope ON metaschema_modules_public.namespace_module ( database_id, scope );

COMMIT;
