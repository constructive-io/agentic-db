-- Deploy schemas/services_public/tables/cors_settings/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/apis/table
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

-- Per-database (and optionally per-API) CORS origin configuration.
-- Typed replacement for api_modules rows with name = 'cors'.
-- Row with api_id NULL = database-wide default; row with api_id = per-API override.
CREATE TABLE services_public.cors_settings (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    api_id uuid,

    -- Allowed origins for CORS preflight and response headers
    allowed_origins text[] NOT NULL DEFAULT '{}',

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT api_fkey FOREIGN KEY (api_id) REFERENCES services_public.apis (id) ON DELETE CASCADE,
    CONSTRAINT cors_settings_unique UNIQUE (database_id, api_id)
);

COMMENT ON TABLE services_public.cors_settings IS 'Per-database and per-API CORS origin configuration; typed replacement for api_modules cors JSONB entries';
COMMENT ON COLUMN services_public.cors_settings.id IS 'Unique identifier for this CORS settings record';
COMMENT ON COLUMN services_public.cors_settings.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.cors_settings.api_id IS 'Optional API for per-API override; NULL means database-wide default';
COMMENT ON COLUMN services_public.cors_settings.allowed_origins IS 'Array of allowed CORS origins (e.g. https://example.com)';

CREATE INDEX cors_settings_database_id_idx ON services_public.cors_settings (database_id);
CREATE INDEX cors_settings_api_id_idx ON services_public.cors_settings (api_id);

COMMIT;
