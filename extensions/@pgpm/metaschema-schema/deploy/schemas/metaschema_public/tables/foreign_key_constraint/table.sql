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

    -- PG18 application-time temporal FK: renders the trailing field_ids /
    -- ref_field_ids period column with PERIOD on both sides (WITH PERIOD).
    with_period boolean NOT NULL DEFAULT false,

    -- PG18 column-list referential action: a subset of field_ids to null out /
    -- reset when delete_action is SET NULL ('n') / SET DEFAULT ('d'), rendering
    -- ON DELETE SET NULL (col, ...). NULL means the whole FK column list.
    delete_set_field_ids uuid[],

    -- Constraint timing: emit DEFERRABLE / INITIALLY DEFERRED.
    is_deferrable boolean NOT NULL DEFAULT false,
    initially_deferred boolean NOT NULL DEFAULT false,

    category metaschema_public.object_category NOT NULL DEFAULT 'app',

    tags citext[] NOT NULL DEFAULT '{}',

    created_at timestamptz DEFAULT now(),
    updated_at timestamptz DEFAULT now(),

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    UNIQUE(table_id, name),
    CHECK (field_ids <> '{}'),
    CHECK (ref_field_ids <> '{}')
);


CREATE INDEX foreign_key_constraint_table_id_idx ON metaschema_public.foreign_key_constraint ( table_id );
CREATE INDEX foreign_key_constraint_database_id_idx ON metaschema_public.foreign_key_constraint ( database_id );

COMMIT;
