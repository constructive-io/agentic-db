-- Deploy schemas/metaschema_public/tables/view/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.view (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  schema_id uuid NOT NULL,
  name text NOT NULL,

  -- Primary/source table for the view (nullable for ViewComposite)
  -- For ViewTableProjection, ViewFilteredTable, ViewAggregated: the source table
  -- For ViewJoinedTables: the primary (left-most) table
  -- For ViewComposite: NULL (no table reference)
  table_id uuid,

  -- View query definition using View* node types
  view_type text NOT NULL,
  data jsonb DEFAULT '{}',

  -- Optional filter using Authz* node types (baked into view WHERE clause)
  filter_type text,
  filter_data jsonb DEFAULT '{}',

  -- View options
  security_invoker boolean DEFAULT true,
  is_read_only boolean DEFAULT true,

  smart_tags jsonb,

  category metaschema_public.object_category NOT NULL DEFAULT 'app',
  module text NULL,
  scope int NULL,

  tags citext[] NOT NULL DEFAULT '{}',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE (schema_id, name)
);


CREATE INDEX view_schema_id_idx ON metaschema_public.view ( schema_id );
CREATE INDEX view_database_id_idx ON metaschema_public.view ( database_id );
CREATE INDEX view_table_id_idx ON metaschema_public.view ( table_id );

COMMIT;
