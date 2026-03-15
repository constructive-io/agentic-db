-- Deploy schemas/metaschema_modules_public/tables/uuid_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.uuid_module (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    database_id uuid NOT NULL,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    uuid_function text NOT NULL DEFAULT 'uuid_generate_v4',
    uuid_seed text NOT NULL,
    --
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.uuid_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.uuid_module IS E'@omit manyToMany';
CREATE INDEX uuid_module_database_id_idx ON metaschema_modules_public.uuid_module ( database_id );

COMMIT;
