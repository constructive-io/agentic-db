-- Deploy schemas/metaschema_public/tables/trigger/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

-- https://www.postgresql.org/docs/12/sql-createtrigger.html

CREATE TABLE metaschema_public.trigger (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),
  
  table_id uuid NOT NULL,
  name text NOT NULL,
  event text, -- INSERT, UPDATE, DELETE, or TRUNCATE
  function_name text,

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,

  tags citext[] NOT NULL DEFAULT '{}',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE(table_id, name)
);


CREATE INDEX trigger_table_id_idx ON metaschema_public.trigger ( table_id );
CREATE INDEX trigger_database_id_idx ON metaschema_public.trigger ( database_id );

COMMIT;
