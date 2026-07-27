-- Deploy schemas/metaschema_modules_public/tables/infra_config_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.infra_config_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table(s), recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
    -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
    entity_field text,
    -- Schema references (resolved by BEFORE INSERT trigger when uuid_nil)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
    public_schema_name text,
    private_schema_name text,

    -- Generated table IDs (populated by the generator)
    config_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table name (input -- bare name without scope prefix).
    -- The trigger prepends the scope prefix automatically.
    config_table_name text NOT NULL DEFAULT 'config',

    -- API routing (get-or-create: if set, schema is added to this API)
    api_name text DEFAULT 'config',
    private_api_name text DEFAULT NULL,

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
    entity_table_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope).
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config.
    provisions jsonb NULL,

    -- Constraints
    CONSTRAINT infra_config_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT infra_config_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT infra_config_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT infra_config_module_config_table_fkey FOREIGN KEY (config_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT infra_config_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX infra_config_module_database_id_idx ON metaschema_modules_public.infra_config_module ( database_id );
CREATE INDEX infra_config_module_schema_id_idx ON metaschema_modules_public.infra_config_module ( schema_id );
CREATE INDEX infra_config_module_config_table_id_idx ON metaschema_modules_public.infra_config_module ( config_table_id );

CREATE UNIQUE INDEX infra_config_module_unique_scope ON metaschema_modules_public.infra_config_module ( database_id, scope );

COMMENT ON TABLE metaschema_modules_public.infra_config_module IS
    'Namespace-backed plaintext key-value config module. Requires namespace_module and emits namespace:sync_config job triggers for K8s ConfigMap synchronization.';

COMMIT;
