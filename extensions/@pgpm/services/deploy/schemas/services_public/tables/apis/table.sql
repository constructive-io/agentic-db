-- Deploy schemas/services_public/tables/apis/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.apis (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    name text NOT NULL,
    dbname text NOT NULL DEFAULT current_database(),
    role_name text NOT NULL DEFAULT 'authenticated',
    anon_role text NOT NULL DEFAULT 'anonymous',
    is_public boolean NOT NULL DEFAULT true,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    UNIQUE(database_id, name)
);

COMMENT ON TABLE services_public.apis IS 'API endpoint configurations: each record defines a PostGraphile/PostgREST API with its database role and public access settings';
COMMENT ON COLUMN services_public.apis.id IS 'Unique identifier for this API';
COMMENT ON COLUMN services_public.apis.database_id IS 'Reference to the metaschema database this API serves';
COMMENT ON COLUMN services_public.apis.name IS 'Unique name for this API within its database';
COMMENT ON COLUMN services_public.apis.dbname IS 'PostgreSQL database name to connect to';
COMMENT ON COLUMN services_public.apis.role_name IS 'PostgreSQL role used for authenticated requests';
COMMENT ON COLUMN services_public.apis.anon_role IS 'PostgreSQL role used for anonymous/unauthenticated requests';
COMMENT ON COLUMN services_public.apis.is_public IS 'Whether this API is publicly accessible without authentication';

CREATE INDEX apis_database_id_idx ON services_public.apis ( database_id );

COMMIT;
