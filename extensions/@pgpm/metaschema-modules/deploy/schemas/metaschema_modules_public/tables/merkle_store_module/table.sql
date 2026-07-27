-- Deploy schemas/metaschema_modules_public/tables/merkle_store_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.merkle_store_module (
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

    -- Generated table IDs (populated by BEFORE INSERT trigger)
    object_table_id uuid NOT NULL DEFAULT uuid_nil(),
    store_table_id uuid NOT NULL DEFAULT uuid_nil(),
    commit_table_id uuid NOT NULL DEFAULT uuid_nil(),
    ref_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table/function prefix (e.g., 'graph' -> graph_object, graph_store, ...)
    -- Stored normalized (no trailing underscore); underscore added at generation time
    prefix text NOT NULL DEFAULT '',

    -- API routing (get-or-create: if set, schema is added to this API; if NULL, no API is added)
    api_name text,
    private_api_name text,

    -- Scope: 'app' for app-level, 'platform' for database-scoped with
    -- RLS through metaschema_public.database ownership.
    scope text NOT NULL,

    -- Function name prefix override: NULL (default) inherits from `prefix`;
    -- '' (empty string) generates unprefixed function names (e.g., get_all instead of function_graph_get_all);
    -- any other value is used as-is. Tables always keep their prefix regardless of this setting.
    function_prefix text DEFAULT NULL,

    -- Permission key for SELECT gating: when set, all 4 merkle tables require this
    -- permission for SELECT at platform/app scope (e.g., 'manage_graphs').
    -- NULL means the caller intentionally wants open membership SELECT.
    permission_key text DEFAULT NULL,

    -- Timestamps
    created_at timestamptz NOT NULL DEFAULT now(),

    -- Constraints
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT object_table_fkey FOREIGN KEY (object_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT store_table_fkey FOREIGN KEY (store_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT commit_table_fkey FOREIGN KEY (commit_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT ref_table_fkey FOREIGN KEY (ref_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    -- Only one merkle store module per database + prefix combination
    CONSTRAINT merkle_store_module_database_prefix_unique UNIQUE (database_id, prefix)
);

CREATE INDEX merkle_store_module_database_id_idx ON metaschema_modules_public.merkle_store_module ( database_id );
CREATE INDEX merkle_store_module_private_schema_id_idx ON metaschema_modules_public.merkle_store_module ( private_schema_id );

COMMIT;
