-- Deploy schemas/metaschema_modules_public/tables/integration_providers_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.integration_providers_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Scope-key column name on the generated table(s), recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
    -- 'database_id', entity -> the module's key, global (platform/app) -> NULL.
    entity_field text,
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
    public_schema_name text,
    private_schema_name text,

    -- Generated table IDs (populated by the generator)
    table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table name (input -- bare name without scope prefix)
    table_name text NOT NULL DEFAULT 'integration_providers',

    -- API routing (configurable per-module)
    api_name text DEFAULT 'compute',
    private_api_name text DEFAULT NULL,

    -- Scope: integration providers are installed once per database as platform scope.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for platform scope)
    entity_table_id uuid NULL,

    CONSTRAINT integration_providers_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT integration_providers_module_table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT integration_providers_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT integration_providers_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT integration_providers_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX integration_providers_module_database_id_idx ON metaschema_modules_public.integration_providers_module ( database_id );
CREATE INDEX integration_providers_module_schema_id_idx ON metaschema_modules_public.integration_providers_module ( schema_id );
CREATE INDEX integration_providers_module_private_schema_id_idx ON metaschema_modules_public.integration_providers_module ( private_schema_id );
CREATE INDEX integration_providers_module_table_id_idx ON metaschema_modules_public.integration_providers_module ( table_id );

-- One install per database per scope (prefix distinguishes multiple instances)
CREATE UNIQUE INDEX integration_providers_module_unique_scope ON metaschema_modules_public.integration_providers_module ( database_id, scope, prefix );

COMMENT ON TABLE metaschema_modules_public.integration_providers_module IS
    'Config row for the integration_providers_module, which provisions a per-database
     integration_providers table holding branded, reusable service definitions.
     Integration providers act as a catalog of external services (e.g. Mailgun, Postgres)
     and list the canonical secret/config names required to use them.
     Other modules (function_module, resource_module) match the provider slug as a string.';

COMMIT;
