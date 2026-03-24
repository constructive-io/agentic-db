-- Deploy schemas/metaschema_public/tables/database/table to pg

-- requires: schemas/metaschema_public/schema

BEGIN;

CREATE TABLE metaschema_public.database (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  owner_id uuid,
  schema_hash text,
  
  name text,
  label text,
  
  hash uuid,
  unique(schema_hash)
);

ALTER TABLE metaschema_public.database
  ADD CONSTRAINT db_namechk CHECK (char_length(name) > 2);

COMMENT ON COLUMN metaschema_public.database.schema_hash IS '@omit';

COMMIT;
