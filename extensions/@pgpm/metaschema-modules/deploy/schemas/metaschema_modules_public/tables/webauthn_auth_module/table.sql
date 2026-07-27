-- Deploy schemas/metaschema_modules_public/tables/webauthn_auth_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

-- WebAuthn / Passkey auth module config.
-- Sibling of crypto_auth_module. Registers a `webauthn_challenge` entry in
-- the scoped api_modules table for every authenticated API in the database,
-- so the Node relying-party (using @simplewebauthn/server) knows where to
-- read and write passkey challenges + where the credentials table lives.
--
-- RP config (rp_id, rp_name, origin_allowlist, attestation_type,
-- require_user_verification, resident_key) lives on this row (not on
-- app_auth_settings) because RP identity varies per deployment, not per
-- user choice.
--
-- All fields default to safe passwordless-passkey values per SimpleWebAuthn's
-- consumer guidance: attestation_type='none', require_user_verification=false,
-- resident_key='required'.
CREATE TABLE metaschema_modules_public.webauthn_auth_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    users_table_id uuid NOT NULL DEFAULT uuid_nil(),
    credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
    session_secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
    auth_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Relying Party config. Empty defaults require the caller to populate
    -- via UPDATE / ALTER on the row before the first registration.
    rp_id text NOT NULL DEFAULT '',
    rp_name text NOT NULL DEFAULT '',
    origin_allowlist text[] NOT NULL DEFAULT '{}',

    -- Consumer defaults per SimpleWebAuthn passkey guidance.
    attestation_type text NOT NULL DEFAULT 'none'
        CHECK (attestation_type IN ('none', 'indirect', 'direct', 'enterprise')),
    require_user_verification boolean NOT NULL DEFAULT false,
    resident_key text NOT NULL DEFAULT 'required'
        CHECK (resident_key IN ('discouraged', 'preferred', 'required')),

    -- Challenge TTL (mirrors mfa_challenge_expiry on app_auth_settings).
    -- 5 minutes matches SimpleWebAuthn's recommended cookie-based TTL.
    challenge_expiry interval NOT NULL DEFAULT '5 minutes',

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT credentials_table_fkey FOREIGN KEY (credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT session_secrets_table_fkey FOREIGN KEY (session_secrets_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT auth_settings_table_fkey FOREIGN KEY (auth_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX webauthn_auth_module_database_id_idx ON metaschema_modules_public.webauthn_auth_module ( database_id );

COMMIT;
