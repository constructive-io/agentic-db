-- Deploy schemas/metaschema_public/tables/view_table/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/view/table
-- requires: schemas/metaschema_public/tables/table/table

BEGIN;

-- Junction table linking views to their joined tables (for ViewJoinedTables)
-- This provides referential integrity for views that reference multiple tables.
-- The primary table is stored in view.table_id; this table stores additional joined tables.
CREATE TABLE metaschema_public.view_table (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  view_id uuid NOT NULL,
  table_id uuid NOT NULL,
  
  -- Order of joins (0 = first join, 1 = second join, etc.)
  join_order int NOT NULL DEFAULT 0,

  CONSTRAINT view_fkey FOREIGN KEY (view_id) REFERENCES metaschema_public.view (id) ON DELETE CASCADE,
  CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

  UNIQUE (view_id, table_id)
);

COMMENT ON TABLE metaschema_public.view_table IS 'Junction table linking views to their joined tables for referential integrity';

CREATE INDEX view_table_view_id_idx ON metaschema_public.view_table ( view_id );
CREATE INDEX view_table_table_id_idx ON metaschema_public.view_table ( table_id );

COMMIT;
