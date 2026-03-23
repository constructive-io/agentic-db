-- Deploy schemas/metaschema_modules_public/tables/crypto_auth_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.crypto_auth_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    
    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    users_table_id uuid NOT NULL DEFAULT uuid_nil(),
    -- TOKENS_REMOVAL: tokens_table_id removed - crypto auth now uses sessions_module
    secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
    addresses_table_id uuid NOT NULL DEFAULT uuid_nil(),

    user_field text NOT NULL,

    crypto_network text NOT NULL DEFAULT 'BTC',
    sign_in_request_challenge text NOT NULL DEFAULT 'sign_in_request_challenge',
    sign_in_record_failure text NOT NULL DEFAULT 'sign_in_record_failure',
    sign_up_with_key text NOT NULL DEFAULT 'sign_up_with_key',
    sign_in_with_challenge text NOT NULL DEFAULT 'sign_in_with_challenge',

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT secrets_table_fkey FOREIGN KEY (secrets_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    -- TOKENS_REMOVAL: tokens_table_fkey removed - crypto auth now uses sessions_module
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

-- TOKENS_REMOVAL: tokens_table_fkey comment removed
CREATE INDEX crypto_auth_module_database_id_idx ON metaschema_modules_public.crypto_auth_module ( database_id );

COMMIT;
