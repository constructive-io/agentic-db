-- Deploy schemas/metaschema_modules_public/tables/function_invocation_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.function_invocation_module (
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
    invocations_table_id uuid NOT NULL DEFAULT uuid_nil(),
    execution_logs_table_id uuid NOT NULL DEFAULT uuid_nil(),
    attempts_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (input to the generator — bare names without scope prefix).
    -- The trigger prepends the scope prefix automatically.
    invocations_table_name text NOT NULL DEFAULT 'function_invocations',
    execution_logs_table_name text NOT NULL DEFAULT 'function_execution_logs',
    attempts_table_name text NOT NULL DEFAULT 'function_invocation_attempts',

    -- API routing (get-or-create: if set, schema is added to this API; if NULL, no API is added)
    api_name text,
    private_api_name text,

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    -- Override to create multiple module instances at the same scope.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS and billing attribution.
    -- When set, invocations are scoped to the entity (org, app) for billing/metering.
    entity_table_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope).
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config.
    -- Keys are table keys (invocations, execution_logs).
    provisions jsonb NULL,

    -- Default permissions: permission names auto-granted to new members.
    default_permissions text[] DEFAULT NULL,

    -- Constraints
    CONSTRAINT function_invocation_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT function_invocation_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT function_invocation_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT function_invocation_module_invocations_table_fkey FOREIGN KEY (invocations_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT function_invocation_module_logs_table_fkey FOREIGN KEY (execution_logs_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT function_invocation_module_attempts_table_fkey FOREIGN KEY (attempts_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT function_invocation_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX function_invocation_module_database_id_idx ON metaschema_modules_public.function_invocation_module ( database_id );

-- Unique constraint: one function invocation module per database per scope (K8s infra: scopes never share).
CREATE UNIQUE INDEX function_invocation_module_unique_scope ON metaschema_modules_public.function_invocation_module ( database_id, scope );

COMMIT;
