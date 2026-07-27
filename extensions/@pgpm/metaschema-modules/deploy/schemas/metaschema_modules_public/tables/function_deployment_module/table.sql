-- Deploy schemas/metaschema_modules_public/tables/function_deployment_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.function_deployment_module (
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
    deployments_table_id uuid NOT NULL DEFAULT uuid_nil(),
    deployment_events_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (input to the generator — bare names without scope prefix).
    -- The trigger prepends the scope prefix automatically.
    deployments_table_name text NOT NULL DEFAULT 'function_deployments',
    deployment_events_table_name text NOT NULL DEFAULT 'function_deployment_events',

    -- API routing (get-or-create: if set, schema is added to this API; if NULL, no API is added)
    api_name text,
    private_api_name text,

    -- Scope: determines the security level for this module instance.
    -- Resolved to a membership_type integer at trigger time via membership_types table.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    -- Override to create multiple module instances at the same scope.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level deployments, entity table for entity-scoped)
    entity_table_id uuid NULL,

    -- FK to function_module: which function definitions table deployments reference
    function_module_id uuid NULL,

    -- FK to namespace_module: which namespaces table deployments reference
    namespace_module_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope).
    -- When provided, replaces the default policy set in apply_function_deployment_security.
    -- Accepts a JSON array of policy objects:
    --   {"$type": "AuthzEntityMembership", "privileges": ["select", "update"], "data": {...}}
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config.
    -- Keys are table keys (deployments, deployment_events).
    -- When a key is present, the module trigger skips default security for that table;
    -- secure_table_provision applies the custom grants/policies instead.
    provisions jsonb NULL,

    -- Default permissions: permission names auto-granted to new members.
    -- NULL uses the module's built-in defaults; explicit array overrides them.
    default_permissions text[] DEFAULT NULL,

    -- Constraints
    CONSTRAINT function_deployment_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT function_deployment_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT function_deployment_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT function_deployment_module_deployments_table_fkey FOREIGN KEY (deployments_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT function_deployment_module_events_table_fkey FOREIGN KEY (deployment_events_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT function_deployment_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT function_deployment_module_function_module_fkey FOREIGN KEY (function_module_id) REFERENCES metaschema_modules_public.function_module (id) ON DELETE SET NULL,
    CONSTRAINT function_deployment_module_namespace_module_fkey FOREIGN KEY (namespace_module_id) REFERENCES metaschema_modules_public.namespace_module (id) ON DELETE SET NULL
);

CREATE INDEX function_deployment_module_database_id_idx ON metaschema_modules_public.function_deployment_module ( database_id );

-- Unique constraint: one function deployment module per database per scope (K8s infra: scopes never share).
CREATE UNIQUE INDEX function_deployment_module_unique_scope ON metaschema_modules_public.function_deployment_module ( database_id, scope );

COMMIT;
