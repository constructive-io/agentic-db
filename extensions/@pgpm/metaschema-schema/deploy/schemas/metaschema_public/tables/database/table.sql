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

  -- Singleton flag marking the platform (constructive) database itself.
  -- Write-once: first row to set it wins; immutable once true.
  platform boolean NOT NULL DEFAULT false,

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  unique(schema_hash)
);

ALTER TABLE metaschema_public.database
  ADD CONSTRAINT db_namechk CHECK (char_length(name) > 2);

CREATE UNIQUE INDEX databases_database_platform_singleton_idx
  ON metaschema_public.database (platform)
  WHERE platform;

COMMENT ON COLUMN metaschema_public.database.schema_hash IS '@omit';

COMMIT;
