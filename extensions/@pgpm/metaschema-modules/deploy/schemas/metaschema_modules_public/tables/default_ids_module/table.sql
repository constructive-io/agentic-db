-- Deploy schemas/metaschema_modules_public/tables/default_ids_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.default_ids_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE
);

CREATE INDEX default_ids_module_database_id_idx ON metaschema_modules_public.default_ids_module ( database_id );

COMMIT;
