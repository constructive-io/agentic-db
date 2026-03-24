-- Deploy schemas/metaschema_modules_public/tables/users_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.users_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    table_name text NOT NULL DEFAULT 'users',
    -- 

    --
    type_table_id uuid NOT NULL DEFAULT uuid_nil(),
    type_table_name text NOT NULL DEFAULT 'role_types',
    -- 
     
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT type_table_fkey FOREIGN KEY (type_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX users_module_database_id_idx ON metaschema_modules_public.users_module ( database_id );

COMMIT;
