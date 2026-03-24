-- Deploy schemas/services_public/tables/apps/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/sites/table 
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

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

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    UNIQUE ( site_id )
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

ALTER TABLE services_public.apps ADD CONSTRAINT apps_site_id_fkey FOREIGN KEY ( site_id ) REFERENCES services_public.sites ( id );
CREATE INDEX apps_site_id_idx ON services_public.apps ( site_id );

CREATE INDEX apps_database_id_idx ON services_public.apps ( database_id );


COMMIT;
