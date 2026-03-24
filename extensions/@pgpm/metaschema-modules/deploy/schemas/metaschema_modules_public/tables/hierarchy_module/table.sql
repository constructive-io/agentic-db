-- Deploy schemas/metaschema_modules_public/tables/hierarchy_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.hierarchy_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    
    -- Schema references
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    
    -- Table references for created tables
    chart_edges_table_id uuid NOT NULL DEFAULT uuid_nil(),
    chart_edges_table_name text NOT NULL DEFAULT '',
    
    hierarchy_sprt_table_id uuid NOT NULL DEFAULT uuid_nil(),
    hierarchy_sprt_table_name text NOT NULL DEFAULT '',
    
    chart_edge_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
    chart_edge_grants_table_name text NOT NULL DEFAULT '',
    
    -- Required external table references
    entity_table_id uuid NOT NULL,  -- Organizations table (membership_type=2 entity)
    users_table_id uuid NOT NULL,   -- Users table
    
    -- Prefix for naming (e.g., 'org' -> 'org_chart_edges')
    prefix text NOT NULL DEFAULT 'org',
    
    -- Resolved names for RLS parser lookups
    private_schema_name text NOT NULL DEFAULT '',
    sprt_table_name text NOT NULL DEFAULT '',
    
    -- Function names for helper functions
    rebuild_hierarchy_function text NOT NULL DEFAULT '',
    get_subordinates_function text NOT NULL DEFAULT '',
    get_managers_function text NOT NULL DEFAULT '',
    is_manager_of_function text NOT NULL DEFAULT '',
    
    -- Timestamps
    created_at timestamptz NOT NULL DEFAULT now(),
    
    -- Constraints
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT chart_edges_table_fkey FOREIGN KEY (chart_edges_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT hierarchy_sprt_table_fkey FOREIGN KEY (hierarchy_sprt_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT chart_edge_grants_table_fkey FOREIGN KEY (chart_edge_grants_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    
    -- Only one hierarchy module per database
    CONSTRAINT hierarchy_module_database_unique UNIQUE (database_id)
);

CREATE INDEX hierarchy_module_database_id_idx ON metaschema_modules_public.hierarchy_module ( database_id );

COMMIT;
