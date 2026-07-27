-- Deploy schemas/metaschema_modules_public/tables/catalog_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

-- Typed catalog module configuration: one row per database installs the typed
-- catalog tables (catalog_public.domains / apis / sites / namespaces /
-- functions / resources / resource_definitions / resource_installations /
-- apps). The catalog is
-- a system projection surface holding ALL scopes of each type; scoped source
-- tables register into it via catalog_register. The stable schema-qualified
-- table names are load-bearing deployment contracts.
CREATE TABLE metaschema_modules_public.catalog_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Schema reference (if uuid_nil, resolved from schema name or default)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional schema name override (used when schema_id is not provided)
    public_schema_name text,

    -- Generated table IDs (populated by the generator)
    domains_table_id uuid NOT NULL DEFAULT uuid_nil(),
    apis_table_id uuid NOT NULL DEFAULT uuid_nil(),
    sites_table_id uuid NOT NULL DEFAULT uuid_nil(),
    namespaces_table_id uuid NOT NULL DEFAULT uuid_nil(),
    functions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    resources_table_id uuid NOT NULL DEFAULT uuid_nil(),
    resource_definitions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    resource_installations_table_id uuid NOT NULL DEFAULT uuid_nil(),
    apps_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (inputs to the generator; stable load-bearing contracts)
    domains_table_name text NOT NULL DEFAULT 'domains',
    apis_table_name text NOT NULL DEFAULT 'apis',
    sites_table_name text NOT NULL DEFAULT 'sites',
    namespaces_table_name text NOT NULL DEFAULT 'namespaces',
    functions_table_name text NOT NULL DEFAULT 'functions',
    resources_table_name text NOT NULL DEFAULT 'resources',
    resource_definitions_table_name text NOT NULL DEFAULT 'resource_definitions',
    resource_installations_table_name text NOT NULL DEFAULT 'resource_installations',
    apps_table_name text NOT NULL DEFAULT 'apps',

    -- API routing (get-or-create: if set, schema is added to this API)
    api_name text,
    private_api_name text,

    -- Scope of the administering security policies; the catalog tables
    -- themselves hold rows from ALL scopes. Platform holds it.
    scope text NOT NULL,

    -- Entity table for RLS (NULL for non-entity scopes)
    entity_table_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope)
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config
    provisions jsonb NULL,

    -- Default permissions: permission names auto-granted to new members
    default_permissions text[] DEFAULT NULL,

    CONSTRAINT catalog_module_db_fkey
        FOREIGN KEY (database_id)
        REFERENCES metaschema_public.database (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_schema_fkey
        FOREIGN KEY (schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_domains_table_fkey
        FOREIGN KEY (domains_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_apis_table_fkey
        FOREIGN KEY (apis_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_sites_table_fkey
        FOREIGN KEY (sites_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_namespaces_table_fkey
        FOREIGN KEY (namespaces_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_functions_table_fkey
        FOREIGN KEY (functions_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_resources_table_fkey
        FOREIGN KEY (resources_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_resource_definitions_table_fkey
        FOREIGN KEY (resource_definitions_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_resource_installations_table_fkey
        FOREIGN KEY (resource_installations_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_apps_table_fkey
        FOREIGN KEY (apps_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT catalog_module_entity_table_fkey
        FOREIGN KEY (entity_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE
);

-- One catalog per database: it holds all scopes of each type, so instances
-- never multiply per scope or per module.
CREATE UNIQUE INDEX catalog_module_unique_database
    ON metaschema_modules_public.catalog_module (database_id);

COMMIT;
