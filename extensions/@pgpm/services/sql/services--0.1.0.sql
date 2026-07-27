\echo Use "CREATE EXTENSION services" to load this file. \quit
CREATE SCHEMA services_private;

GRANT USAGE ON SCHEMA services_private TO authenticated;

GRANT USAGE ON SCHEMA services_private TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA services_private
  GRANT ALL ON TABLES TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA services_private
  GRANT ALL ON SEQUENCES TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA services_private
  GRANT ALL ON FUNCTIONS TO administrator;

CREATE SCHEMA services_public;

GRANT USAGE ON SCHEMA services_public TO authenticated;

GRANT USAGE ON SCHEMA services_public TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA services_public
  GRANT ALL ON TABLES TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA services_public
  GRANT ALL ON SEQUENCES TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA services_public
  GRANT ALL ON FUNCTIONS TO administrator;

CREATE TABLE services_public.apis (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  name text NOT NULL,
  dbname text NOT NULL DEFAULT current_database(),
  role_name text NOT NULL DEFAULT 'authenticated',
  anon_role text NOT NULL DEFAULT 'anonymous',
  is_public boolean NOT NULL DEFAULT true,
  labels jsonb NOT NULL DEFAULT '{}',
  annotations jsonb NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  UNIQUE (database_id, name)
);

COMMENT ON TABLE services_public.apis IS 'API endpoint configurations: each record defines a PostGraphile/PostgREST API with its database role and public access settings';

COMMENT ON COLUMN services_public.apis.id IS 'Unique identifier for this API';

COMMENT ON COLUMN services_public.apis.database_id IS 'Reference to the metaschema database this API serves';

COMMENT ON COLUMN services_public.apis.name IS 'Unique name for this API within its database';

COMMENT ON COLUMN services_public.apis.dbname IS 'PostgreSQL database name to connect to';

COMMENT ON COLUMN services_public.apis.role_name IS 'PostgreSQL role used for authenticated requests';

COMMENT ON COLUMN services_public.apis.anon_role IS 'PostgreSQL role used for anonymous/unauthenticated requests';

COMMENT ON COLUMN services_public.apis.is_public IS 'Whether this API is publicly accessible without authentication';

COMMENT ON COLUMN services_public.apis.labels IS 'Key/value pairs for selecting and filtering APIs';

COMMENT ON COLUMN services_public.apis.annotations IS 'Freeform metadata for tooling and operational notes';

CREATE INDEX apis_database_id_idx ON services_public.apis (database_id);

CREATE TABLE services_public.api_modules (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  api_id uuid NOT NULL,
  name text NOT NULL,
  data pg_catalog.json NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE services_public.api_modules IS 'Server-side module configuration for an API endpoint; stores module name and JSON settings used by the application server';

COMMENT ON COLUMN services_public.api_modules.id IS 'Unique identifier for this API module record';

COMMENT ON COLUMN services_public.api_modules.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.api_modules.api_id IS 'API this module configuration belongs to';

COMMENT ON COLUMN services_public.api_modules.name IS 'Module name (e.g. auth, uploads, webhooks)';

COMMENT ON COLUMN services_public.api_modules.data IS 'JSON configuration data for this module';

ALTER TABLE services_public.api_modules 
  ADD CONSTRAINT api_modules_api_id_fkey
    FOREIGN KEY(api_id)
    REFERENCES services_public.apis (id);

CREATE INDEX api_modules_api_id_idx ON services_public.api_modules (api_id);

CREATE INDEX api_modules_database_id_idx ON services_public.api_modules (database_id);

CREATE TABLE services_public.api_schemas (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL,
  api_id uuid NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT api_fkey
    FOREIGN KEY(api_id)
    REFERENCES services_public.apis (id)
    ON DELETE CASCADE,
  UNIQUE (api_id, schema_id)
);

COMMENT ON TABLE services_public.api_schemas IS 'Join table linking APIs to the database schemas they expose; controls which schemas are accessible through each API';

COMMENT ON COLUMN services_public.api_schemas.id IS 'Unique identifier for this API-schema mapping';

COMMENT ON COLUMN services_public.api_schemas.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.api_schemas.schema_id IS 'Metaschema schema being exposed through the API';

COMMENT ON COLUMN services_public.api_schemas.api_id IS 'API that exposes this schema';

CREATE INDEX api_schemas_database_id_idx ON services_public.api_schemas (database_id);

CREATE INDEX api_schemas_schema_id_idx ON services_public.api_schemas (schema_id);

CREATE INDEX api_schemas_api_id_idx ON services_public.api_schemas (api_id);

CREATE TABLE services_public.sites (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  title text,
  description text,
  og_image image,
  favicon attachment,
  apple_touch_icon image,
  logo image,
  dbname text NOT NULL DEFAULT current_database(),
  labels jsonb NOT NULL DEFAULT '{}',
  annotations jsonb NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT max_title 
    CHECK (character_length(title) <= 120),
  CONSTRAINT max_descr 
    CHECK (character_length(description) <= 120)
);

COMMENT ON TABLE services_public.sites IS 'Top-level site configuration: branding assets, title, and description for a deployed application';

COMMENT ON COLUMN services_public.sites.id IS 'Unique identifier for this site';

COMMENT ON COLUMN services_public.sites.database_id IS 'Reference to the metaschema database this site belongs to';

COMMENT ON COLUMN services_public.sites.title IS 'Display title for the site (max 120 characters)';

COMMENT ON COLUMN services_public.sites.description IS 'Short description of the site (max 120 characters)';

COMMENT ON COLUMN services_public.sites.og_image IS 'Open Graph image used for social media link previews';

COMMENT ON COLUMN services_public.sites.favicon IS 'Browser favicon attachment';

COMMENT ON COLUMN services_public.sites.apple_touch_icon IS 'Apple touch icon for iOS home screen bookmarks';

COMMENT ON COLUMN services_public.sites.logo IS 'Primary logo image for the site';

COMMENT ON COLUMN services_public.sites.dbname IS 'PostgreSQL database name this site connects to';

COMMENT ON COLUMN services_public.sites.labels IS 'Key/value pairs for selecting and filtering sites';

COMMENT ON COLUMN services_public.sites.annotations IS 'Freeform metadata for tooling and operational notes';

CREATE INDEX sites_database_id_idx ON services_public.sites (database_id);

CREATE TABLE services_public.apps (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  site_id uuid NOT NULL,
  name text,
  app_image image,
  app_store_link url,
  app_store_id text,
  app_id_prefix text,
  play_store_link url,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  UNIQUE (site_id)
);

COMMENT ON TABLE services_public.apps IS 'Mobile and native app configuration linked to a site, including store links and identifiers';

COMMENT ON COLUMN services_public.apps.id IS 'Unique identifier for this app';

COMMENT ON COLUMN services_public.apps.database_id IS 'Reference to the metaschema database this app belongs to';

COMMENT ON COLUMN services_public.apps.site_id IS 'Site this app is associated with (one app per site)';

COMMENT ON COLUMN services_public.apps.name IS 'Display name of the app';

COMMENT ON COLUMN services_public.apps.app_image IS 'App icon or promotional image';

COMMENT ON COLUMN services_public.apps.app_store_link IS 'URL to the Apple App Store listing';

COMMENT ON COLUMN services_public.apps.app_store_id IS 'Apple App Store application identifier';

COMMENT ON COLUMN services_public.apps.app_id_prefix IS 'Apple App ID prefix (Team ID) for universal links and associated domains';

COMMENT ON COLUMN services_public.apps.play_store_link IS 'URL to the Google Play Store listing';

ALTER TABLE services_public.apps 
  ADD CONSTRAINT apps_site_id_fkey
    FOREIGN KEY(site_id)
    REFERENCES services_public.sites (id);

CREATE INDEX apps_site_id_idx ON services_public.apps (site_id);

CREATE INDEX apps_database_id_idx ON services_public.apps (database_id);

CREATE TABLE services_public.domains (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  api_id uuid,
  site_id uuid,
  service_id uuid,
  subdomain hostname,
  domain hostname,
  labels jsonb NOT NULL DEFAULT '{}',
  annotations jsonb NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT api_fkey
    FOREIGN KEY(api_id)
    REFERENCES services_public.apis (id)
    ON DELETE CASCADE,
  CONSTRAINT site_fkey
    FOREIGN KEY(site_id)
    REFERENCES services_public.sites (id)
    ON DELETE CASCADE,
  CONSTRAINT one_route_chk 
    CHECK (num_nonnulls(api_id, site_id, service_id) <= 1),
  UNIQUE (subdomain, domain)
);

COMMENT ON TABLE services_public.domains IS 'DNS domain and subdomain routing: maps hostnames to either an API endpoint or a site';

COMMENT ON COLUMN services_public.domains.id IS 'Unique identifier for this domain record';

COMMENT ON COLUMN services_public.domains.database_id IS 'Reference to the metaschema database this domain belongs to';

COMMENT ON COLUMN services_public.domains.api_id IS 'API endpoint this domain routes to (mutually exclusive with site_id)';

COMMENT ON COLUMN services_public.domains.site_id IS 'Site this domain routes to (mutually exclusive with api_id and service_id)';

COMMENT ON COLUMN services_public.domains.service_id IS 'Server deployment this domain routes to (mutually exclusive with api_id and site_id)';

COMMENT ON COLUMN services_public.domains.labels IS 'Key/value pairs for selecting and filtering domains';

COMMENT ON COLUMN services_public.domains.annotations IS 'Freeform metadata for tooling and operational notes';

COMMENT ON COLUMN services_public.domains.subdomain IS 'Subdomain portion of the hostname';

COMMENT ON COLUMN services_public.domains.domain IS 'Root domain of the hostname';

CREATE INDEX domains_database_id_idx ON services_public.domains (database_id);

CREATE INDEX domains_api_id_idx ON services_public.domains (api_id);

CREATE INDEX domains_site_id_idx ON services_public.domains (site_id);

CREATE INDEX domains_service_id_idx ON services_public.domains (service_id);

CREATE TABLE services_public.site_metadata (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  site_id uuid NOT NULL,
  title text,
  description text,
  og_image image,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CHECK (character_length(title) <= 120),
  CHECK (character_length(description) <= 120)
);

COMMENT ON TABLE services_public.site_metadata IS 'SEO and social sharing metadata for a site: page title, description, and Open Graph image';

COMMENT ON COLUMN services_public.site_metadata.id IS 'Unique identifier for this metadata record';

COMMENT ON COLUMN services_public.site_metadata.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.site_metadata.site_id IS 'Site this metadata belongs to';

COMMENT ON COLUMN services_public.site_metadata.title IS 'Page title for SEO (max 120 characters)';

COMMENT ON COLUMN services_public.site_metadata.description IS 'Meta description for SEO and social sharing (max 120 characters)';

COMMENT ON COLUMN services_public.site_metadata.og_image IS 'Open Graph image for social media previews';

ALTER TABLE services_public.site_metadata 
  ADD CONSTRAINT site_metadata_site_id_fkey
    FOREIGN KEY(site_id)
    REFERENCES services_public.sites (id);

CREATE INDEX site_metadata_site_id_idx ON services_public.site_metadata (site_id);

CREATE INDEX site_metadata_database_id_idx ON services_public.site_metadata (database_id);

CREATE TABLE services_public.site_modules (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  site_id uuid NOT NULL,
  name text NOT NULL,
  data pg_catalog.json NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE services_public.site_modules IS 'Site-level module configuration; stores module name and JSON settings used by the frontend or server for each site';

COMMENT ON COLUMN services_public.site_modules.id IS 'Unique identifier for this site module record';

COMMENT ON COLUMN services_public.site_modules.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.site_modules.site_id IS 'Site this module configuration belongs to';

COMMENT ON COLUMN services_public.site_modules.name IS 'Module name (e.g. user_auth_module, analytics)';

COMMENT ON COLUMN services_public.site_modules.data IS 'JSON configuration data for this module';

ALTER TABLE services_public.site_modules 
  ADD CONSTRAINT site_modules_site_id_fkey
    FOREIGN KEY(site_id)
    REFERENCES services_public.sites (id);

CREATE INDEX site_modules_site_id_idx ON services_public.site_modules (site_id);

CREATE INDEX site_modules_database_id_idx ON services_public.site_modules (database_id);

CREATE TABLE services_public.site_themes (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  site_id uuid NOT NULL,
  theme jsonb NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE services_public.site_themes IS 'Theme configuration for a site; stores design tokens, colors, and typography as JSONB';

COMMENT ON COLUMN services_public.site_themes.id IS 'Unique identifier for this theme record';

COMMENT ON COLUMN services_public.site_themes.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.site_themes.site_id IS 'Site this theme belongs to';

COMMENT ON COLUMN services_public.site_themes.theme IS 'JSONB object containing theme tokens (colors, typography, spacing, etc.)';

ALTER TABLE services_public.site_themes 
  ADD CONSTRAINT site_themes_site_id_fkey
    FOREIGN KEY(site_id)
    REFERENCES services_public.sites (id);

CREATE INDEX site_themes_site_id_idx ON services_public.site_themes (site_id);

CREATE INDEX site_themes_database_id_idx ON services_public.site_themes (database_id);

CREATE FUNCTION services_private.tg_enforce_api_table_name_uniqueness() RETURNS trigger AS $EOFCODE$
DECLARE
  new_name_hash bytea;
  conflicting_api_name text;
  conflicting_table_name text;
BEGIN
  -- Compute the plural-hash of the new table name
  new_name_hash := metaschema_private.table_name_hash(NEW.name);

  -- Check if any API that includes this table's schema also includes
  -- another schema containing a table with the same name hash
  SELECT a.name, t.name
  INTO conflicting_api_name, conflicting_table_name
  FROM services_public.api_schemas AS my_api
  JOIN services_public.api_schemas AS other_api
    ON other_api.api_id = my_api.api_id
    AND other_api.schema_id IS DISTINCT FROM NEW.schema_id
  JOIN metaschema_public.table AS t
    ON t.schema_id = other_api.schema_id
    AND metaschema_private.table_name_hash(t.name) = new_name_hash
  JOIN services_public.apis AS a
    ON a.id = my_api.api_id
  WHERE my_api.schema_id = NEW.schema_id
  LIMIT 1;

  IF conflicting_api_name IS NOT NULL THEN
    RAISE EXCEPTION 'Table name "%" conflicts with existing table "%" in API "%". Table names must be unique (by plural form) across all schemas within the same API.',
      NEW.name, conflicting_table_name, conflicting_api_name;
  END IF;

  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _000003_enforce_api_table_name_uniqueness
  BEFORE INSERT
  ON metaschema_public.table
  FOR EACH ROW
  EXECUTE PROCEDURE services_private.tg_enforce_api_table_name_uniqueness();

CREATE TRIGGER _000003_enforce_api_table_name_uniqueness_update
  BEFORE UPDATE
  ON metaschema_public.table
  FOR EACH ROW
  WHEN (new.name IS DISTINCT FROM old.name
    OR new.schema_id IS DISTINCT FROM old.schema_id)
  EXECUTE PROCEDURE services_private.tg_enforce_api_table_name_uniqueness();

CREATE FUNCTION services_private.tg_enforce_api_schema_table_name_uniqueness() RETURNS trigger AS $EOFCODE$
DECLARE
  conflicting_new_table text;
  conflicting_existing_table text;
BEGIN
  -- Find any table name collision between the newly linked schema
  -- and any schema already linked to the same API
  SELECT new_t.name, existing_t.name
  INTO conflicting_new_table, conflicting_existing_table
  FROM metaschema_public.table AS new_t
  JOIN services_public.api_schemas AS existing_link
    ON existing_link.api_id = NEW.api_id
    AND existing_link.schema_id IS DISTINCT FROM NEW.schema_id
  JOIN metaschema_public.table AS existing_t
    ON existing_t.schema_id = existing_link.schema_id
    AND metaschema_private.table_name_hash(existing_t.name) = metaschema_private.table_name_hash(new_t.name)
  WHERE new_t.schema_id = NEW.schema_id
  LIMIT 1;

  IF conflicting_new_table IS NOT NULL THEN
    RAISE EXCEPTION 'Cannot link schema to API: table "%" conflicts with existing table "%" already exposed in this API. Table names must be unique (by plural form) across all schemas within the same API.',
      conflicting_new_table, conflicting_existing_table;
  END IF;

  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _000001_enforce_api_schema_table_name_uniqueness
  BEFORE INSERT
  ON services_public.api_schemas
  FOR EACH ROW
  EXECUTE PROCEDURE services_private.tg_enforce_api_schema_table_name_uniqueness();

CREATE TABLE services_public.database_settings (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL UNIQUE,
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
  options jsonb NOT NULL DEFAULT '{}'::jsonb,
  labels jsonb NOT NULL DEFAULT '{}',
  annotations jsonb NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
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

CREATE TABLE services_public.api_settings (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  api_id uuid NOT NULL UNIQUE,
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
  options jsonb NOT NULL DEFAULT '{}'::jsonb,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT api_fkey
    FOREIGN KEY(api_id)
    REFERENCES services_public.apis (id)
    ON DELETE CASCADE
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

CREATE TABLE services_public.rls_settings (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL UNIQUE,
  authenticate_schema_id uuid,
  role_schema_id uuid,
  authenticate_function_id uuid,
  authenticate_strict_function_id uuid,
  current_role_function_id uuid,
  current_role_id_function_id uuid,
  current_user_agent_function_id uuid,
  current_ip_address_function_id uuid,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT authenticate_schema_fkey
    FOREIGN KEY(authenticate_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT role_schema_fkey
    FOREIGN KEY(role_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT authenticate_function_fkey
    FOREIGN KEY(authenticate_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT authenticate_strict_function_fkey
    FOREIGN KEY(authenticate_strict_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT current_role_function_fkey
    FOREIGN KEY(current_role_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT current_role_id_function_fkey
    FOREIGN KEY(current_role_id_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT current_user_agent_function_fkey
    FOREIGN KEY(current_user_agent_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT current_ip_address_function_fkey
    FOREIGN KEY(current_ip_address_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL
);

COMMENT ON TABLE services_public.rls_settings IS 'Per-database RLS module runtime configuration; typed replacement for api_modules rls_module JSONB entries';

COMMENT ON COLUMN services_public.rls_settings.id IS 'Unique identifier for this RLS settings record';

COMMENT ON COLUMN services_public.rls_settings.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.rls_settings.authenticate_schema_id IS 'Schema containing authenticate/authenticate_strict functions (FK to metaschema_public.schema)';

COMMENT ON COLUMN services_public.rls_settings.role_schema_id IS 'Schema containing current_role and related functions (FK to metaschema_public.schema)';

COMMENT ON COLUMN services_public.rls_settings.authenticate_function_id IS 'Reference to the authenticate function (FK to metaschema_public.function)';

COMMENT ON COLUMN services_public.rls_settings.authenticate_strict_function_id IS 'Reference to the strict authenticate function (FK to metaschema_public.function)';

COMMENT ON COLUMN services_public.rls_settings.current_role_function_id IS 'Reference to the current_role function (FK to metaschema_public.function)';

COMMENT ON COLUMN services_public.rls_settings.current_role_id_function_id IS 'Reference to the current_role_id function (FK to metaschema_public.function)';

COMMENT ON COLUMN services_public.rls_settings.current_user_agent_function_id IS 'Reference to the current_user_agent function (FK to metaschema_public.function)';

COMMENT ON COLUMN services_public.rls_settings.current_ip_address_function_id IS 'Reference to the current_ip_address function (FK to metaschema_public.function)';

CREATE INDEX rls_settings_database_id_idx ON services_public.rls_settings (database_id);

CREATE TABLE services_public.cors_settings (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  api_id uuid,
  allowed_origins text[] NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT api_fkey
    FOREIGN KEY(api_id)
    REFERENCES services_public.apis (id)
    ON DELETE CASCADE,
  CONSTRAINT cors_settings_unique 
    UNIQUE (database_id, api_id)
);

COMMENT ON TABLE services_public.cors_settings IS 'Per-database and per-API CORS origin configuration; typed replacement for api_modules cors JSONB entries';

COMMENT ON COLUMN services_public.cors_settings.id IS 'Unique identifier for this CORS settings record';

COMMENT ON COLUMN services_public.cors_settings.database_id IS 'Reference to the metaschema database';

COMMENT ON COLUMN services_public.cors_settings.api_id IS 'Optional API for per-API override; NULL means database-wide default';

COMMENT ON COLUMN services_public.cors_settings.allowed_origins IS 'Array of allowed CORS origins (e.g. https://example.com)';

CREATE INDEX cors_settings_database_id_idx ON services_public.cors_settings (database_id);

CREATE INDEX cors_settings_api_id_idx ON services_public.cors_settings (api_id);

CREATE TABLE services_public.pubkey_settings (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL UNIQUE,
  schema_id uuid,
  crypto_network text NOT NULL DEFAULT 'cosmos',
  user_field text NOT NULL DEFAULT 'user_id',
  sign_up_with_key_function_id uuid,
  sign_in_request_challenge_function_id uuid,
  sign_in_record_failure_function_id uuid,
  sign_in_with_challenge_function_id uuid,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT sign_up_with_key_function_fkey
    FOREIGN KEY(sign_up_with_key_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT sign_in_request_challenge_function_fkey
    FOREIGN KEY(sign_in_request_challenge_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT sign_in_record_failure_function_fkey
    FOREIGN KEY(sign_in_record_failure_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL,
  CONSTRAINT sign_in_with_challenge_function_fkey
    FOREIGN KEY(sign_in_with_challenge_function_id)
    REFERENCES metaschema_public.function (id)
    ON DELETE SET NULL
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

CREATE TABLE services_public.webauthn_settings (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL UNIQUE,
  schema_id uuid,
  credentials_schema_id uuid,
  sessions_schema_id uuid,
  session_secrets_schema_id uuid,
  credentials_table_id uuid,
  sessions_table_id uuid,
  session_credentials_table_id uuid,
  session_secrets_table_id uuid,
  user_field_id uuid,
  rp_id text NOT NULL DEFAULT '',
  rp_name text NOT NULL DEFAULT '',
  origin_allowlist text[] NOT NULL DEFAULT '{}',
  attestation_type text NOT NULL DEFAULT 'none' CHECK (attestation_type IN ('none', 'indirect', 'direct', 'enterprise')),
  require_user_verification boolean NOT NULL DEFAULT false,
  resident_key text NOT NULL DEFAULT 'required' CHECK (resident_key IN ('discouraged', 'preferred', 'required')),
  challenge_expiry_seconds bigint NOT NULL DEFAULT 300,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT credentials_schema_fkey
    FOREIGN KEY(credentials_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT sessions_schema_fkey
    FOREIGN KEY(sessions_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT session_secrets_schema_fkey
    FOREIGN KEY(session_secrets_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE SET NULL,
  CONSTRAINT credentials_table_fkey
    FOREIGN KEY(credentials_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT session_secrets_table_fkey
    FOREIGN KEY(session_secrets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT user_field_fkey
    FOREIGN KEY(user_field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE SET NULL
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

CREATE FUNCTION services_private.tg_enforce_api_exposure() RETURNS trigger AS $EOFCODE$
DECLARE
  schema_name text;
  exposure metaschema_public.api_exposure_level;
  api_is_public boolean;
BEGIN
  -- Check if the target API is public
  SELECT a.is_public INTO api_is_public
  FROM services_public.apis AS a
  WHERE a.id = NEW.api_id;

  -- Private APIs can contain any schema — skip enforcement
  IF api_is_public IS NOT TRUE THEN
    RETURN NEW;
  END IF;

  SELECT s.name, s.api_exposure
  INTO schema_name, exposure
  FROM metaschema_public.schema AS s
  WHERE s.id = NEW.schema_id;

  IF exposure = 'never_expose' THEN
    RAISE EXCEPTION 'Cannot add schema "%" to a public API: schema is marked never_expose and can never be exposed through a public API.',
      schema_name
    USING ERRCODE = 'check_violation';
  END IF;

  IF exposure = 'internal_only' THEN
    RAISE EXCEPTION 'Cannot add schema "%" to a public API: schema is marked internal_only. A platform administrator must change the api_exposure level before this schema can be exposed.',
      schema_name
    USING ERRCODE = 'check_violation';
  END IF;

  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE;

CREATE TRIGGER _000002_enforce_api_exposure
  BEFORE INSERT
  ON services_public.api_schemas
  FOR EACH ROW
  EXECUTE PROCEDURE services_private.tg_enforce_api_exposure();