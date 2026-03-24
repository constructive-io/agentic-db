-- Deploy schemas/services_public/tables/site_themes/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/sites/table 
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.site_themes (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    site_id uuid NOT NULL,
    theme jsonb NOT NULL,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE
);

COMMENT ON TABLE services_public.site_themes IS 'Theme configuration for a site; stores design tokens, colors, and typography as JSONB';
COMMENT ON COLUMN services_public.site_themes.id IS 'Unique identifier for this theme record';
COMMENT ON COLUMN services_public.site_themes.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.site_themes.site_id IS 'Site this theme belongs to';
COMMENT ON COLUMN services_public.site_themes.theme IS 'JSONB object containing theme tokens (colors, typography, spacing, etc.)';

ALTER TABLE services_public.site_themes ADD CONSTRAINT site_themes_site_id_fkey FOREIGN KEY ( site_id ) REFERENCES services_public.sites ( id );
CREATE INDEX site_themes_site_id_idx ON services_public.site_themes ( site_id );

CREATE INDEX site_themes_database_id_idx ON services_public.site_themes ( database_id );

COMMIT;
