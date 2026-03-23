-- Deploy schemas/services_public/tables/site_modules/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/sites/table 
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.site_modules (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    site_id uuid NOT NULL,
    name text NOT NULL,
    data json NOT NULL,

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE
);

COMMENT ON TABLE services_public.site_modules IS 'Site-level module configuration; stores module name and JSON settings used by the frontend or server for each site';
COMMENT ON COLUMN services_public.site_modules.id IS 'Unique identifier for this site module record';
COMMENT ON COLUMN services_public.site_modules.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.site_modules.site_id IS 'Site this module configuration belongs to';
COMMENT ON COLUMN services_public.site_modules.name IS 'Module name (e.g. user_auth_module, analytics)';
COMMENT ON COLUMN services_public.site_modules.data IS 'JSON configuration data for this module';

ALTER TABLE services_public.site_modules ADD CONSTRAINT site_modules_site_id_fkey FOREIGN KEY ( site_id ) REFERENCES services_public.sites ( id );
CREATE INDEX site_modules_site_id_idx ON services_public.site_modules ( site_id );

CREATE INDEX site_modules_database_id_idx ON services_public.site_modules ( database_id );


COMMIT;
