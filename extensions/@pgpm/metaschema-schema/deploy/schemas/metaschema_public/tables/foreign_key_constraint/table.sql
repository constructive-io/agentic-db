-- Deploy schemas/metaschema_public/tables/foreign_key_constraint/table to pg

-- requires: schemas/metaschema_public/tables/field/table
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.foreign_key_constraint (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL DEFAULT uuid_nil(),
    
    table_id uuid NOT NULL,
    name text,
    description text,
    smart_tags jsonb,
    type text,
    field_ids uuid[] NOT NULL,
    ref_table_id uuid NOT NULL REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    ref_field_ids uuid[] NOT NULL,
    delete_action char(1) DEFAULT 'c', -- postgres default is 'a'
    update_action char(1) DEFAULT 'a',

    category metaschema_public.object_category NOT NULL DEFAULT 'app',
    module text NULL,
    scope int NULL,

    tags citext[] NOT NULL DEFAULT '{}',

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    UNIQUE(table_id, name),
    CHECK (field_ids <> '{}'),
    CHECK (ref_field_ids <> '{}')
);


CREATE INDEX foreign_key_constraint_table_id_idx ON metaschema_public.foreign_key_constraint ( table_id );
CREATE INDEX foreign_key_constraint_database_id_idx ON metaschema_public.foreign_key_constraint ( database_id );

COMMIT;
