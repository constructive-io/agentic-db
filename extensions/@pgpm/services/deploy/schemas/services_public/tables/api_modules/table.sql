-- Deploy schemas/services_public/tables/api_modules/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/apis/table 
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.api_modules (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    api_id uuid NOT NULL,
    name text NOT NULL,
    data json NOT NULL,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE

);

COMMENT ON TABLE services_public.api_modules IS 'Server-side module configuration for an API endpoint; stores module name and JSON settings used by the application server';
COMMENT ON COLUMN services_public.api_modules.id IS 'Unique identifier for this API module record';
COMMENT ON COLUMN services_public.api_modules.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.api_modules.api_id IS 'API this module configuration belongs to';
COMMENT ON COLUMN services_public.api_modules.name IS 'Module name (e.g. auth, uploads, webhooks)';
COMMENT ON COLUMN services_public.api_modules.data IS 'JSON configuration data for this module';

ALTER TABLE services_public.api_modules ADD CONSTRAINT api_modules_api_id_fkey FOREIGN KEY ( api_id ) REFERENCES services_public.apis ( id );
CREATE INDEX api_modules_api_id_idx ON services_public.api_modules ( api_id );

CREATE INDEX api_modules_database_id_idx ON services_public.api_modules ( database_id );


COMMIT;
