-- Deploy schemas/metaschema_public/tables/trigger_function/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE TABLE metaschema_public.trigger_function (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,

  name text NOT NULL,
  code text,

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  --
  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  UNIQUE (database_id, name)
);

CREATE INDEX trigger_function_database_id_idx ON metaschema_public.trigger_function ( database_id );

COMMIT;
