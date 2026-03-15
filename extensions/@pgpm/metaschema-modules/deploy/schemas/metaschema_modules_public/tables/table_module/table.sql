-- Deploy schemas/metaschema_modules_public/tables/table_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.table_module (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),

    table_id uuid NOT NULL DEFAULT uuid_nil(),

    table_name text DEFAULT NULL,

    node_type text NOT NULL,

    use_rls boolean NOT NULL DEFAULT true,

    data jsonb NOT NULL DEFAULT '{}',

    fields uuid[],

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.table_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.table_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.table_module IS E'@omit manyToMany';
CREATE INDEX table_module_database_id_idx ON metaschema_modules_public.table_module ( database_id );
CREATE INDEX table_module_table_id_idx ON metaschema_modules_public.table_module ( table_id );
CREATE INDEX table_module_node_type_idx ON metaschema_modules_public.table_module ( node_type );

COMMIT;
