-- Deploy schemas/services_public/tables/site_metadata/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/sites/table 
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.site_metadata (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    site_id uuid NOT NULL,
    title text,
    description text,
    og_image image,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,

    CHECK ( character_length(title) <= 120 ),
    CHECK ( character_length(description) <= 120 )
);


COMMENT ON TABLE services_public.site_metadata IS 'SEO and social sharing metadata for a site: page title, description, and Open Graph image';
COMMENT ON COLUMN services_public.site_metadata.id IS 'Unique identifier for this metadata record';
COMMENT ON COLUMN services_public.site_metadata.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.site_metadata.site_id IS 'Site this metadata belongs to';
COMMENT ON COLUMN services_public.site_metadata.title IS 'Page title for SEO (max 120 characters)';
COMMENT ON COLUMN services_public.site_metadata.description IS 'Meta description for SEO and social sharing (max 120 characters)';
COMMENT ON COLUMN services_public.site_metadata.og_image IS 'Open Graph image for social media previews';

ALTER TABLE services_public.site_metadata ADD CONSTRAINT site_metadata_site_id_fkey FOREIGN KEY ( site_id ) REFERENCES services_public.sites ( id );
CREATE INDEX site_metadata_site_id_idx ON services_public.site_metadata ( site_id );

CREATE INDEX site_metadata_database_id_idx ON services_public.site_metadata ( database_id );

COMMIT;
