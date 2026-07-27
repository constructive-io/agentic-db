-- Deploy schemas/services_public/tables/webauthn_settings/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/tables/field/table

BEGIN;

-- Per-database WebAuthn / passkey runtime configuration.
-- Typed replacement for api_modules rows with name = 'webauthn_challenge'.
-- One row per database; the server reads this instead of the JSONB blob.
CREATE TABLE services_public.webauthn_settings (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL UNIQUE,

    -- Schema references (FK to metaschema_public.schema)
    schema_id uuid,
    credentials_schema_id uuid,
    sessions_schema_id uuid,
    session_secrets_schema_id uuid,

    -- Table references (FK to metaschema_public.table)
    credentials_table_id uuid,
    sessions_table_id uuid,
    session_credentials_table_id uuid,
    session_secrets_table_id uuid,

    -- Field reference (FK to metaschema_public.field)
    user_field_id uuid,

    -- Relying Party configuration
    rp_id text NOT NULL DEFAULT '',
    rp_name text NOT NULL DEFAULT '',
    origin_allowlist text[] NOT NULL DEFAULT '{}',

    -- WebAuthn registration/authentication options
    attestation_type text NOT NULL DEFAULT 'none'
        CHECK (attestation_type IN ('none', 'indirect', 'direct', 'enterprise')),
    require_user_verification boolean NOT NULL DEFAULT false,
    resident_key text NOT NULL DEFAULT 'required'
        CHECK (resident_key IN ('discouraged', 'preferred', 'required')),

    -- Challenge TTL in seconds (5 minutes = 300s)
    challenge_expiry_seconds bigint NOT NULL DEFAULT 300,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT credentials_schema_fkey FOREIGN KEY (credentials_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT sessions_schema_fkey FOREIGN KEY (sessions_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT session_secrets_schema_fkey FOREIGN KEY (session_secrets_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE SET NULL,
    CONSTRAINT credentials_table_fkey FOREIGN KEY (credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT session_secrets_table_fkey FOREIGN KEY (session_secrets_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT user_field_fkey FOREIGN KEY (user_field_id) REFERENCES metaschema_public.field (id) ON DELETE SET NULL
);

COMMENT ON TABLE services_public.webauthn_settings IS 'Per-database WebAuthn/passkey runtime configuration; typed replacement for api_modules webauthn_challenge JSONB entries';
COMMENT ON COLUMN services_public.webauthn_settings.id IS 'Unique identifier for this WebAuthn settings record';
COMMENT ON COLUMN services_public.webauthn_settings.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.webauthn_settings.schema_id IS 'Schema containing WebAuthn auth procedures (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.webauthn_settings.credentials_schema_id IS 'Schema of the webauthn_credentials table (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.webauthn_settings.sessions_schema_id IS 'Schema of the sessions table (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.webauthn_settings.session_secrets_schema_id IS 'Schema of the session_secrets table (FK to metaschema_public.schema)';
COMMENT ON COLUMN services_public.webauthn_settings.credentials_table_id IS 'Reference to the webauthn_credentials table (FK to metaschema_public.table)';
COMMENT ON COLUMN services_public.webauthn_settings.sessions_table_id IS 'Reference to the sessions table (FK to metaschema_public.table)';
COMMENT ON COLUMN services_public.webauthn_settings.session_credentials_table_id IS 'Reference to the session_credentials table (FK to metaschema_public.table)';
COMMENT ON COLUMN services_public.webauthn_settings.session_secrets_table_id IS 'Reference to the session_secrets table (FK to metaschema_public.table)';
COMMENT ON COLUMN services_public.webauthn_settings.user_field_id IS 'Reference to the user field on webauthn_credentials (FK to metaschema_public.field)';
COMMENT ON COLUMN services_public.webauthn_settings.rp_id IS 'WebAuthn Relying Party ID (typically the domain name)';
COMMENT ON COLUMN services_public.webauthn_settings.rp_name IS 'WebAuthn Relying Party display name';
COMMENT ON COLUMN services_public.webauthn_settings.origin_allowlist IS 'Allowed origins for WebAuthn registration and authentication';
COMMENT ON COLUMN services_public.webauthn_settings.attestation_type IS 'Attestation conveyance preference (none, indirect, direct, enterprise)';
COMMENT ON COLUMN services_public.webauthn_settings.require_user_verification IS 'Whether to require user verification (biometric/PIN) during auth';
COMMENT ON COLUMN services_public.webauthn_settings.resident_key IS 'Resident key requirement (discouraged, preferred, required)';
COMMENT ON COLUMN services_public.webauthn_settings.challenge_expiry_seconds IS 'Challenge TTL in seconds (default 300 = 5 minutes)';

CREATE INDEX webauthn_settings_database_id_idx ON services_public.webauthn_settings (database_id);

COMMIT;
