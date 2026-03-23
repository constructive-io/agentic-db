-- Deploy schemas/metaschema_public/tables/policy/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.policy (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  table_id uuid NOT NULL,
  name text,
  grantee_name text,
  privilege text,

  -- using_expression text,
  -- check_expression text,
  -- policy_text text,

  permissive boolean default true,
  disabled boolean default false,

  policy_type text,
  data jsonb,

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,

  tags citext[] NOT NULL DEFAULT '{}',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE (table_id, name)
);


CREATE INDEX policy_table_id_idx ON metaschema_public.policy ( table_id );
CREATE INDEX policy_database_id_idx ON metaschema_public.policy ( database_id );

COMMIT;
