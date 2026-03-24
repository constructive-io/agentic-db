-- Deploy schemas/metaschema_public/tables/index/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.index (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  table_id uuid NOT NULL,
  name text NOT NULL DEFAULT '',

  field_ids uuid[],
  include_field_ids uuid[],

  access_method text NOT NULL DEFAULT 'BTREE',

  index_params jsonb,
  where_clause jsonb,
  is_unique boolean NOT NULL default false,

  options jsonb,
  op_classes text[],

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,

  tags citext[] NOT NULL DEFAULT '{}',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  -- index names are UNIQUE across schemas, so for portability we will check against database_id
  UNIQUE (database_id, name)
);


CREATE INDEX index_table_id_idx ON metaschema_public.index ( table_id );
CREATE INDEX index_database_id_idx ON metaschema_public.index ( database_id );

COMMIT;
