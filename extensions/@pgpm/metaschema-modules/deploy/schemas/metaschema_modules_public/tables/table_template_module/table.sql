-- Deploy schemas/metaschema_modules_public/tables/table_template_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.table_template_module (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    database_id uuid NOT NULL,
    
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    table_id uuid NOT NULL DEFAULT uuid_nil(),
    owner_table_id uuid NOT NULL DEFAULT uuid_nil(),

    table_name text NOT NULL,

    -- Node type from node_type_registry (e.g., 'TableUserProfiles', 'TableOrganizationSettings', 'TableUserSettings')
    node_type text NOT NULL,

    -- Type-specific parameters as jsonb
    -- TableUserProfiles: {} (uses default fields)
    -- TableOrganizationSettings: {} (uses default fields)
    -- TableUserSettings: {} (uses default fields)
    data jsonb NOT NULL DEFAULT '{}',

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT owner_table_fkey FOREIGN KEY (owner_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.table_template_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.table_template_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.table_template_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.table_template_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.table_template_module IS E'@omit manyToMany';
CREATE INDEX table_template_module_database_id_idx ON metaschema_modules_public.table_template_module ( database_id );
CREATE INDEX table_template_module_schema_id_idx ON metaschema_modules_public.table_template_module ( schema_id );
CREATE INDEX table_template_module_private_schema_id_idx ON metaschema_modules_public.table_template_module ( private_schema_id );
CREATE INDEX table_template_module_table_id_idx ON metaschema_modules_public.table_template_module ( table_id );
CREATE INDEX table_template_module_owner_table_id_idx ON metaschema_modules_public.table_template_module ( owner_table_id );
CREATE INDEX table_template_module_node_type_idx ON metaschema_modules_public.table_template_module ( node_type );

COMMIT;
