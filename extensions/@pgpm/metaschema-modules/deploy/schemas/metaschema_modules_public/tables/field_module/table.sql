-- Deploy schemas/metaschema_modules_public/tables/field_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.field_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
    
    table_id uuid NOT NULL DEFAULT uuid_nil(),
    field_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Node type from node_type_registry (e.g., 'FieldSlug', 'FieldImmutable', 'FieldInflection', 'FieldOwned')
    node_type text NOT NULL,

    -- Type-specific parameters as jsonb
    -- FieldSlug: {"source_field_id": "uuid"}
    -- FieldImmutable: {} (no extra params)
    -- FieldInflection: {"ops": ["snake_case", "uppercase"]}
    -- FieldOwned: {"role_key_field_id": "uuid", "protected_field_ids": ["uuid", ...]}
    data jsonb NOT NULL DEFAULT '{}',

    triggers text[],
    functions text[],

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT field_fkey FOREIGN KEY (field_id) REFERENCES metaschema_public.field (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

CREATE INDEX field_module_database_id_idx ON metaschema_modules_public.field_module ( database_id );
CREATE INDEX field_module_node_type_idx ON metaschema_modules_public.field_module ( node_type );

COMMIT;
