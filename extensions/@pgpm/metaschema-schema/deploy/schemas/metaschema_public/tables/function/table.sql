-- Deploy schemas/metaschema_public/tables/function/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table

BEGIN;

CREATE TABLE metaschema_public.function (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    schema_id uuid NOT NULL,

    name text NOT NULL,

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

    UNIQUE (schema_id, name)
);

CREATE INDEX function_database_id_idx ON metaschema_public.function ( database_id );
CREATE INDEX function_schema_id_idx ON metaschema_public.function ( schema_id );

COMMIT;
