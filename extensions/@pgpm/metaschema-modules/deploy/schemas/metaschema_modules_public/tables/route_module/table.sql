-- Deploy schemas/metaschema_modules_public/tables/route_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/catalog_module/table
-- requires: schemas/metaschema_modules_public/tables/domain_module/table

BEGIN;

CREATE TABLE metaschema_modules_public.route_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Scope-key column name on the generated tables, recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key).
    entity_field text,

    -- Schema references (if uuid_nil, resolved from schema name or default)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional schema name overrides (used when schema IDs are not provided)
    public_schema_name text,
    private_schema_name text,

    -- Catalog the typed route targets reference (target_api_id / target_site_id
    -- FKs + seam guard).
    -- Resolved by the insert trigger from the same-database catalog_module
    -- when NULL.
    catalog_module_id uuid,

    -- Domain module the routes bind hostnames from. Resolved by the insert
    -- trigger from the same-database same-scope domain_module when NULL.
    domain_module_id uuid,

    -- Generated table IDs (populated by the generator)
    routes_table_id uuid NOT NULL DEFAULT uuid_nil(),
    hostname_bindings_table_id uuid NOT NULL DEFAULT uuid_nil(),
    route_bindings_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (input to the generator)
    routes_table_name text NOT NULL DEFAULT 'routes',
    hostname_bindings_table_name text NOT NULL DEFAULT 'hostname_bindings',
    route_bindings_table_name text NOT NULL DEFAULT 'route_bindings',

    -- Generated resolver name (populated by the generator)
    resolver_function_name text,

    -- API routing (get-or-create: if set, schema is added to this API)
    api_name text,
    private_api_name text,

    -- Scope: determines the security level for this module instance.
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Entity table for RLS (NULL for non-entity scopes)
    entity_table_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope)
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config
    provisions jsonb NULL,

    -- Default permissions: permission names auto-granted to new members
    default_permissions text[] DEFAULT NULL,

    CONSTRAINT route_module_db_fkey
        FOREIGN KEY (database_id)
        REFERENCES metaschema_public.database (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_schema_fkey
        FOREIGN KEY (schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_private_schema_fkey
        FOREIGN KEY (private_schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_catalog_fkey
        FOREIGN KEY (catalog_module_id)
        REFERENCES metaschema_modules_public.catalog_module (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_domain_module_fkey
        FOREIGN KEY (domain_module_id)
        REFERENCES metaschema_modules_public.domain_module (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_routes_table_fkey
        FOREIGN KEY (routes_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_hostname_bindings_table_fkey
        FOREIGN KEY (hostname_bindings_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_route_bindings_table_fkey
        FOREIGN KEY (route_bindings_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT route_module_entity_table_fkey
        FOREIGN KEY (entity_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE
);

CREATE INDEX route_module_database_id_idx
    ON metaschema_modules_public.route_module (database_id);

CREATE UNIQUE INDEX route_module_unique_scope
    ON metaschema_modules_public.route_module (database_id, scope);

COMMIT;
