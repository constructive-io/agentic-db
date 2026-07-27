-- Deploy schemas/metaschema_modules_public/tables/domain_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/catalog_module/table

BEGIN;

CREATE TABLE metaschema_modules_public.domain_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Scope-key column name on the generated tables, recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key).
    entity_field text,

    -- Schema reference (if uuid_nil, resolved from schema name or default)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Private schema for generated lifecycle functions (if uuid_nil, resolved
    -- from private schema name or default)
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional schema name override (used when schema_id is not provided)
    public_schema_name text,

    -- Optional private schema name override (used when private_schema_id is not provided)
    private_schema_name text,

    -- Catalog the domains register their exclusive hostname claims into.
    -- Resolved by the insert trigger from the same-database catalog_module
    -- when NULL.
    catalog_module_id uuid,

    -- Generated table IDs (populated by the generator)
    domains_table_id uuid NOT NULL DEFAULT uuid_nil(),
    domain_verifications_table_id uuid NOT NULL DEFAULT uuid_nil(),
    domain_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
    managed_domains_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (input to the generator)
    domains_table_name text NOT NULL DEFAULT 'domains',
    domain_verifications_table_name text NOT NULL DEFAULT 'domain_verifications',
    domain_events_table_name text NOT NULL DEFAULT 'domain_events',
    managed_domains_table_name text NOT NULL DEFAULT 'managed_domains',

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

    CONSTRAINT domain_module_db_fkey
        FOREIGN KEY (database_id)
        REFERENCES metaschema_public.database (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_schema_fkey
        FOREIGN KEY (schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_private_schema_fkey
        FOREIGN KEY (private_schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_catalog_fkey
        FOREIGN KEY (catalog_module_id)
        REFERENCES metaschema_modules_public.catalog_module (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_domains_table_fkey
        FOREIGN KEY (domains_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_verifications_table_fkey
        FOREIGN KEY (domain_verifications_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_events_table_fkey
        FOREIGN KEY (domain_events_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_managed_domains_table_fkey
        FOREIGN KEY (managed_domains_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT domain_module_entity_table_fkey
        FOREIGN KEY (entity_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE
);

CREATE INDEX domain_module_database_id_idx
    ON metaschema_modules_public.domain_module (database_id);

CREATE UNIQUE INDEX domain_module_unique_scope
    ON metaschema_modules_public.domain_module (database_id, scope);

COMMIT;
