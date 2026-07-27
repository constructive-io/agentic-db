-- Deploy schemas/metaschema_public/tables/exclusion_constraint/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table 
-- requires: schemas/metaschema_public/tables/table/table 
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.exclusion_constraint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  table_id uuid NOT NULL,
  name text,
  type text,

  access_method text NOT NULL DEFAULT 'gist',

  field_ids uuid[] NOT NULL DEFAULT '{}',
  operators text[] NOT NULL DEFAULT '{}',

  element_expr jsonb,
  where_clause jsonb,

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',

  tags citext[] NOT NULL DEFAULT '{}',

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE (table_id, name)
);


CREATE INDEX exclusion_constraint_table_id_idx ON metaschema_public.exclusion_constraint ( table_id );
CREATE INDEX exclusion_constraint_database_id_idx ON metaschema_public.exclusion_constraint ( database_id );

COMMIT;
