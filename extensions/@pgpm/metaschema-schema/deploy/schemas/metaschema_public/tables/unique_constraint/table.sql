-- Deploy schemas/metaschema_public/tables/unique_constraint/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table 
-- requires: schemas/metaschema_public/tables/table/table 
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.unique_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  
  table_id uuid NOT NULL,
  name text,
  description text,
  smart_tags jsonb,
  type text,
  field_ids uuid[] NOT NULL,

  -- PG18 application-time temporal UNIQUE: designates the trailing period/range
  -- column in field_ids as WITHOUT OVERLAPS.
  without_overlaps boolean NOT NULL DEFAULT false,

  -- Constraint timing: emit DEFERRABLE / INITIALLY DEFERRED.
  is_deferrable boolean NOT NULL DEFAULT false,
  initially_deferred boolean NOT NULL DEFAULT false,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',

  tags citext[] NOT NULL DEFAULT '{}',

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  -- TODO these are unique across schema, NOT table. We'll need to update this to have database_id
  -- for portability

  UNIQUE (table_id, name),
  CHECK (field_ids <> '{}')
);


CREATE INDEX unique_constraint_table_id_idx ON metaschema_public.unique_constraint ( table_id );
CREATE INDEX unique_constraint_database_id_idx ON metaschema_public.unique_constraint ( database_id );

COMMIT;
