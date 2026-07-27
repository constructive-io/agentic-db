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

  with_check jsonb,

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',

  tags citext[] NOT NULL DEFAULT '{}',

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  CONSTRAINT policy_with_check_shape CHECK (
    with_check IS NULL OR (
      jsonb_typeof(with_check) = 'object'
      AND with_check ? '$type'
      AND jsonb_typeof(with_check->'$type') = 'string'
    )
  ),

  UNIQUE (table_id, name)
);

COMMENT ON COLUMN metaschema_public.policy.with_check IS
  'Optional WITH CHECK override node {"$type": "Authz...", "data": {...}}. Only valid for UPDATE policies; NULL inherits the USING expression.';


CREATE INDEX policy_table_id_idx ON metaschema_public.policy ( table_id );
CREATE INDEX policy_database_id_idx ON metaschema_public.policy ( database_id );

COMMIT;
