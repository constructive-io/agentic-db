-- Deploy schemas/metaschema_modules_public/tables/database_settings_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.database_settings_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    -- Scope-key column name on the generated tables, recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key).
    entity_field text,

    -- Schema reference (if uuid_nil, resolved from schema name or default)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional schema name override (used when schema_id is not provided)
    public_schema_name text,

    -- Generated table IDs (populated by the generator)
    database_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
    rls_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
    pubkey_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
    webauthn_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table names (input to the generator)
    database_settings_table_name text NOT NULL DEFAULT 'database_settings',
    rls_settings_table_name text NOT NULL DEFAULT 'rls_settings',
    pubkey_settings_table_name text NOT NULL DEFAULT 'pubkey_settings',
    webauthn_settings_table_name text NOT NULL DEFAULT 'webauthn_settings',

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

    CONSTRAINT database_settings_module_db_fkey
        FOREIGN KEY (database_id)
        REFERENCES metaschema_public.database (id)
        ON DELETE CASCADE,
    CONSTRAINT database_settings_module_schema_fkey
        FOREIGN KEY (schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT database_settings_module_settings_table_fkey
        FOREIGN KEY (database_settings_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT database_settings_module_rls_table_fkey
        FOREIGN KEY (rls_settings_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT database_settings_module_pubkey_table_fkey
        FOREIGN KEY (pubkey_settings_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT database_settings_module_webauthn_table_fkey
        FOREIGN KEY (webauthn_settings_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT database_settings_module_entity_table_fkey
        FOREIGN KEY (entity_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE
);

CREATE INDEX database_settings_module_database_id_idx
    ON metaschema_modules_public.database_settings_module (database_id);

CREATE UNIQUE INDEX database_settings_module_unique_scope
    ON metaschema_modules_public.database_settings_module (database_id, scope);

COMMIT;
