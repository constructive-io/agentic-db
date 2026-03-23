-- Deploy schemas/metaschema_public/tables/schema_grant/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/schema/table

BEGIN;

CREATE TABLE metaschema_public.schema_grant (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL DEFAULT uuid_nil(),
    
    schema_id uuid NOT NULL,
    grantee_name text NOT NULL,
    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE

);


CREATE INDEX schema_grant_schema_id_idx ON metaschema_public.schema_grant ( schema_id );
CREATE INDEX schema_grant_database_id_idx ON metaschema_public.schema_grant ( database_id );

COMMIT;
