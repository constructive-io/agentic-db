-- Deploy schemas/services_public/tables/api_settings/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/apis/table
-- requires: schemas/services_public/tables/database_settings/table
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE TABLE services_public.api_settings (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    api_id uuid NOT NULL UNIQUE,

    -- Per-API overrides (NULL = inherit from database_settings)
    enable_aggregates boolean,
    enable_postgis boolean,
    enable_search boolean,
    enable_direct_uploads boolean,
    enable_presigned_uploads boolean,
    enable_many_to_many boolean,
    enable_connection_filter boolean,
    enable_ltree boolean,
    enable_llm boolean,
    enable_realtime boolean,
    enable_bulk boolean,
    enable_i18n boolean,

    -- Extensible JSON for future settings that don't warrant their own column
    options jsonb NOT NULL DEFAULT '{}'::jsonb,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT api_fkey FOREIGN KEY (api_id) REFERENCES services_public.apis (id) ON DELETE CASCADE
);

COMMENT ON TABLE services_public.api_settings IS 'Per-API feature flag overrides; NULL columns inherit from database_settings, explicit true/false overrides the database default';
COMMENT ON COLUMN services_public.api_settings.id IS 'Unique identifier for this API settings record';
COMMENT ON COLUMN services_public.api_settings.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.api_settings.api_id IS 'API these settings override for';
COMMENT ON COLUMN services_public.api_settings.enable_aggregates IS 'Override: enable aggregate queries (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_postgis IS 'Override: enable PostGIS spatial types (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_search IS 'Override: enable unified search (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_direct_uploads IS 'Override: enable direct (multipart) file uploads (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_presigned_uploads IS 'Override: enable presigned URL upload flow (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_many_to_many IS 'Override: enable many-to-many relationships (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_connection_filter IS 'Override: enable connection filter (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_ltree IS 'Override: enable ltree hierarchical data type (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_llm IS 'Override: enable LLM/AI integration features (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_realtime IS 'Override: enable realtime subscriptions (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_bulk IS 'Override: enable bulk mutations (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.enable_i18n IS 'Override: enable internationalization plugin (NULL = inherit from database_settings)';
COMMENT ON COLUMN services_public.api_settings.options IS 'Extensible JSON for additional per-API settings that do not have dedicated columns';

CREATE INDEX api_settings_database_id_idx ON services_public.api_settings (database_id);
CREATE INDEX api_settings_api_id_idx ON services_public.api_settings (api_id);

COMMIT;
