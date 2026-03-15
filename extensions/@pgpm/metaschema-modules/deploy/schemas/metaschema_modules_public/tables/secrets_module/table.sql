-- Deploy schemas/metaschema_modules_public/tables/secrets_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.secrets_module (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    database_id uuid NOT NULL,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT 'secrets',
    -- 
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE

);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.secrets_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.secrets_module IS E'@omit manyToMany';
CREATE INDEX secrets_module_database_id_idx ON metaschema_modules_public.secrets_module ( database_id );

COMMENT ON CONSTRAINT table_fkey
     ON metaschema_modules_public.secrets_module IS E'@omit manyToMany';

COMMIT;
