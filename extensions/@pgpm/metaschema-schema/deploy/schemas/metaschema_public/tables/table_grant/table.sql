-- Deploy schemas/metaschema_public/tables/table_grant/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/table/table

BEGIN;

CREATE TABLE metaschema_public.table_grant (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL DEFAULT uuid_nil(),
    
    table_id uuid NOT NULL,
    privilege text NOT NULL,
    grantee_name text NOT NULL,
    field_ids uuid[],

    -- true = GRANT, false = REVOKE
    is_grant boolean NOT NULL DEFAULT true,

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);


CREATE INDEX table_grant_table_id_idx ON metaschema_public.table_grant ( table_id );
CREATE INDEX table_grant_database_id_idx ON metaschema_public.table_grant ( database_id );

COMMIT;
