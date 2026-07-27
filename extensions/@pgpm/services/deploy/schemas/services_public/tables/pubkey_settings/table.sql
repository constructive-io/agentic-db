-- Deploy schemas/services_public/tables/pubkey_settings/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/tables/function/table

BEGIN;

-- Per-database public-key / crypto auth runtime configuration.
-- Typed replacement for api_modules rows with name = 'pubkey_challenge'.
-- One row per database; the server reads this instead of the JSONB blob.
CREATE TABLE services_public.pubkey_settings (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL UNIQUE,

    -- Schema reference (FK to metaschema_public.schema)
    schema_id uuid,

    -- Crypto auth configuration
    crypto_network text NOT NULL DEFAULT 'cosmos',
    user_field text NOT NULL DEFAULT 'user_id',

    -- Function references (FK to metaschema_public.function)
    sign_up_with_key_function_id uuid,
    sign_in_request_challenge_function_id uuid,
    sign_in_record_failure_function_id uuid,
    sign_in_with_challenge_function_id uuid,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT sign_up_with_key_function_fkey FOREIGN KEY (sign_up_with_key_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT sign_in_request_challenge_function_fkey FOREIGN KEY (sign_in_request_challenge_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT sign_in_record_failure_function_fkey FOREIGN KEY (sign_in_record_failure_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL,
    CONSTRAINT sign_in_with_challenge_function_fkey FOREIGN KEY (sign_in_with_challenge_function_id) REFERENCES metaschema_public.function (id) ON DELETE SET NULL
);

COMMENT ON TABLE services_public.pubkey_settings IS 'Per-database public-key crypto auth runtime configuration; typed replacement for api_modules pubkey_challenge JSONB entries';
COMMENT ON COLUMN services_public.pubkey_settings.id IS 'Unique identifier for this pubkey settings record';
COMMENT ON COLUMN services_public.pubkey_settings.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.pubkey_settings.schema_id IS 'Schema containing the crypto auth functions (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.pubkey_settings.crypto_network IS 'Crypto network for key derivation (e.g. cosmos, ethereum)';
COMMENT ON COLUMN services_public.pubkey_settings.user_field IS 'Field name used to identify the user in crypto auth functions';
COMMENT ON COLUMN services_public.pubkey_settings.sign_up_with_key_function_id IS 'Reference to the sign-up-with-key function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.pubkey_settings.sign_in_request_challenge_function_id IS 'Reference to the sign-in challenge request function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.pubkey_settings.sign_in_record_failure_function_id IS 'Reference to the sign-in failure recording function (FK to metaschema_public.function)';
COMMENT ON COLUMN services_public.pubkey_settings.sign_in_with_challenge_function_id IS 'Reference to the sign-in-with-challenge function (FK to metaschema_public.function)';

CREATE INDEX pubkey_settings_database_id_idx ON services_public.pubkey_settings (database_id);

COMMIT;
