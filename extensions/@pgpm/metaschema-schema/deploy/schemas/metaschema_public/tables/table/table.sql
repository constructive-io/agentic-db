-- Deploy schemas/metaschema_public/tables/table/table to pg
-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.table (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  schema_id uuid NOT NULL,
  
  name text NOT NULL,

  label text,
  description text,
  
  smart_tags jsonb,
  
  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,

  use_rls boolean NOT NULL DEFAULT FALSE,
  
  timestamps boolean NOT NULL DEFAULT FALSE,
  peoplestamps boolean NOT NULL DEFAULT FALSE,

  plural_name text,
  singular_name text,

  tags citext[] NOT NULL DEFAULT '{}',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  
  UNIQUE (database_id, schema_id, name)
);

ALTER TABLE metaschema_public.table ADD COLUMN
    inherits_id uuid NULL REFERENCES metaschema_public.table(id);


CREATE INDEX table_schema_id_idx ON metaschema_public.table ( schema_id );
CREATE INDEX table_database_id_idx ON metaschema_public.table ( database_id );

COMMIT;

