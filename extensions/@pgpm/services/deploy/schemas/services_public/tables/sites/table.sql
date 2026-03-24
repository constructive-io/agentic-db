-- Deploy schemas/services_public/tables/sites/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.sites (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  title text,
  description text,
  og_image image,
  favicon attachment,
  apple_touch_icon image,
  logo image,
  
  -- do we need this?
  dbname text NOT NULL DEFAULT current_database(),

  --
  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT max_title CHECK ( character_length(title) <= 120 ),
  CONSTRAINT max_descr CHECK ( character_length(description) <= 120 )
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

CREATE INDEX sites_database_id_idx ON services_public.sites ( database_id );

COMMIT;
