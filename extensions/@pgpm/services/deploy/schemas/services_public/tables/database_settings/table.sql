-- Deploy schemas/services_public/tables/database_settings/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE TABLE services_public.database_settings (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL UNIQUE,

    -- GraphQL API features
    enable_aggregates boolean NOT NULL DEFAULT false,
    enable_postgis boolean NOT NULL DEFAULT true,
    enable_search boolean NOT NULL DEFAULT true,
    enable_direct_uploads boolean NOT NULL DEFAULT true,
    enable_presigned_uploads boolean NOT NULL DEFAULT true,
    enable_many_to_many boolean NOT NULL DEFAULT true,
    enable_connection_filter boolean NOT NULL DEFAULT true,
    enable_ltree boolean NOT NULL DEFAULT true,
    enable_llm boolean NOT NULL DEFAULT false,
    enable_realtime boolean NOT NULL DEFAULT false,
    enable_bulk boolean NOT NULL DEFAULT false,
    enable_i18n boolean NOT NULL DEFAULT false,

    -- Extensible JSON for future settings that don't warrant their own column
    options jsonb NOT NULL DEFAULT '{}'::jsonb,

    labels jsonb NOT NULL DEFAULT '{}',
    annotations jsonb NOT NULL DEFAULT '{}',

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE
);

COMMENT ON TABLE services_public.database_settings IS 'Database-wide feature flags and settings; controls which platform features are available to all APIs in this database';
COMMENT ON COLUMN services_public.database_settings.id IS 'Unique identifier for this settings record';
COMMENT ON COLUMN services_public.database_settings.database_id IS 'Reference to the metaschema database these settings apply to';
COMMENT ON COLUMN services_public.database_settings.enable_aggregates IS 'Enable aggregate queries (sum, avg, min, max, etc.) in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_postgis IS 'Enable PostGIS spatial types and operators in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_search IS 'Enable unified search (tsvector, BM25, pg_trgm, pgvector) in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_direct_uploads IS 'Enable direct (multipart) file upload mutations in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_presigned_uploads IS 'Enable presigned URL upload flow for S3/MinIO storage';
COMMENT ON COLUMN services_public.database_settings.enable_many_to_many IS 'Enable many-to-many relationship queries in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_connection_filter IS 'Enable connection filter (where argument) in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_ltree IS 'Enable ltree hierarchical data type support in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_llm IS 'Enable LLM/AI integration features in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_realtime IS 'Enable realtime subscriptions (cursor-tracked change delivery) in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_bulk IS 'Enable bulk mutation operations (insert, upsert, update, delete) in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.enable_i18n IS 'Enable internationalization plugin (localeStrings field, translation table discovery) in the GraphQL API';
COMMENT ON COLUMN services_public.database_settings.options IS 'Extensible JSON for additional settings that do not have dedicated columns';
COMMENT ON COLUMN services_public.database_settings.labels IS 'Key/value pairs for selecting and filtering database settings';
COMMENT ON COLUMN services_public.database_settings.annotations IS 'Freeform metadata for tooling and operational notes';

CREATE INDEX database_settings_database_id_idx ON services_public.database_settings (database_id);

COMMIT;
