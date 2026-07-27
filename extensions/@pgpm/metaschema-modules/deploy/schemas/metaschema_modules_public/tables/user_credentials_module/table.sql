-- Deploy schemas/metaschema_modules_public/tables/user_credentials_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.user_credentials_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table ('owner_id' here).
    -- Recorded so consumers read it as a stored fact instead of hardcoding.
    entity_field text,
    -- Schema references (resolved by BEFORE INSERT trigger when uuid_nil)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Generated table ID (populated by the generator)
    table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Table name (input — defaults to 'user_secrets')
    table_name text NOT NULL DEFAULT 'user_secrets',

    -- API routing (private schema only — never routed to a public API)
    private_api_name text DEFAULT NULL,

    -- Constraints
    CONSTRAINT user_credentials_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT user_credentials_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT user_credentials_module_table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX user_credentials_module_database_id_idx ON metaschema_modules_public.user_credentials_module ( database_id );
CREATE INDEX user_credentials_module_schema_id_idx ON metaschema_modules_public.user_credentials_module ( schema_id );
CREATE INDEX user_credentials_module_table_id_idx ON metaschema_modules_public.user_credentials_module ( table_id );

-- One user_credentials_module per database.
CREATE UNIQUE INDEX user_credentials_module_unique ON metaschema_modules_public.user_credentials_module ( database_id );

COMMENT ON TABLE metaschema_modules_public.user_credentials_module IS
    'Per-user bcrypt credential store (password hashes, API key hashes).
     Always user-scoped with AuthzDirectOwner RLS. Consumed by user_auth_module,
     identity_providers_module, and bootstrap procedures.';

COMMIT;
