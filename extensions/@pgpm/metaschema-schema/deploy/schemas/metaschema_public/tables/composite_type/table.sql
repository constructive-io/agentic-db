-- Deploy schemas/metaschema_public/tables/composite_type/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.composite_type (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL,
  name text NOT NULL,

  label text,
  description text,

  attributes jsonb NOT NULL DEFAULT '[]',

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',

  tags citext[] NOT NULL DEFAULT '{}',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

  UNIQUE (schema_id, name)
);

CREATE INDEX composite_type_schema_id_idx ON metaschema_public.composite_type ( schema_id );
CREATE INDEX composite_type_database_id_idx ON metaschema_public.composite_type ( database_id );

COMMIT;
