-- Deploy schemas/metaschema_public/tables/primary_key_constraint/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.primary_key_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  
  table_id uuid NOT NULL,
  name text,
  type text,
  field_ids uuid[] NOT NULL,

  -- PG18 application-time temporal PK: designates the trailing period/range
  -- column in field_ids as WITHOUT OVERLAPS.
  without_overlaps boolean NOT NULL DEFAULT false,

  -- Constraint timing: emit DEFERRABLE / INITIALLY DEFERRED.
  is_deferrable boolean NOT NULL DEFAULT false,
  initially_deferred boolean NOT NULL DEFAULT false,

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',

  tags citext[] NOT NULL DEFAULT '{}',

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE(table_id, name),
  CHECK (field_ids <> '{}')
);


CREATE INDEX primary_key_constraint_table_id_idx ON metaschema_public.primary_key_constraint ( table_id );
CREATE INDEX primary_key_constraint_database_id_idx ON metaschema_public.primary_key_constraint ( database_id );

COMMIT;
