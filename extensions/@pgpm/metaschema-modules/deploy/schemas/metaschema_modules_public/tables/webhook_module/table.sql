-- Deploy schemas/metaschema_modules_public/tables/webhook_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/function_module/table
-- requires: schemas/metaschema_modules_public/tables/function_invocation_module/table
-- requires: schemas/metaschema_modules_public/tables/infra_secrets_module/table
-- requires: schemas/metaschema_modules_public/tables/namespace_module/table

BEGIN;

CREATE TABLE metaschema_modules_public.webhook_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Scope-key column name on the generated tables. The insert trigger records
    -- database_id for database scope, entity_id for entity scopes, NULL for
    -- global tiers.
    entity_field text,

    -- Schema references (uuid_nil is resolved from schema names/defaults).
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    public_schema_name text,
    private_schema_name text,

    -- Generated table IDs.
    webhook_endpoints_table_id uuid NOT NULL DEFAULT uuid_nil(),
    webhook_events_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Bare table names; the trigger prepends the scope prefix.
    webhook_endpoints_table_name text NOT NULL DEFAULT 'webhook_endpoints',
    webhook_events_table_name text NOT NULL DEFAULT 'webhook_events',

    -- Paired modules at the exact same scope.
    function_module_id uuid,
    function_invocation_module_id uuid,
    infra_secrets_module_id uuid,
    namespace_module_id uuid,

    -- API routing (optional administrative CRUD surface).
    api_name text,
    private_api_name text,

    scope text NOT NULL,
    prefix text NOT NULL DEFAULT '',
    entity_table_id uuid NULL,

    policies jsonb NULL,
    provisions jsonb NULL,
    default_permissions text[] DEFAULT NULL,

    CONSTRAINT webhook_module_db_fkey
        FOREIGN KEY (database_id)
        REFERENCES metaschema_public.database (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_schema_fkey
        FOREIGN KEY (schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_private_schema_fkey
        FOREIGN KEY (private_schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_endpoints_table_fkey
        FOREIGN KEY (webhook_endpoints_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_events_table_fkey
        FOREIGN KEY (webhook_events_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_function_module_fkey
        FOREIGN KEY (function_module_id)
        REFERENCES metaschema_modules_public.function_module (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_invocation_module_fkey
        FOREIGN KEY (function_invocation_module_id)
        REFERENCES metaschema_modules_public.function_invocation_module (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_secrets_module_fkey
        FOREIGN KEY (infra_secrets_module_id)
        REFERENCES metaschema_modules_public.infra_secrets_module (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_namespace_module_fkey
        FOREIGN KEY (namespace_module_id)
        REFERENCES metaschema_modules_public.namespace_module (id)
        ON DELETE CASCADE,
    CONSTRAINT webhook_module_entity_table_fkey
        FOREIGN KEY (entity_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE
);

CREATE INDEX webhook_module_database_id_idx
    ON metaschema_modules_public.webhook_module (database_id);

CREATE UNIQUE INDEX webhook_module_unique_scope
    ON metaschema_modules_public.webhook_module (database_id, scope);

COMMIT;
