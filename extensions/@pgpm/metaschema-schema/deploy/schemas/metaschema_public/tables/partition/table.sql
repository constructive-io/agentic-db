-- Deploy schemas/metaschema_public/tables/partition/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/tables/field/table

BEGIN;

CREATE TABLE metaschema_public.partition (
  id                uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id       uuid NOT NULL,
  table_id          uuid NOT NULL,
  strategy          text NOT NULL CHECK (strategy IN ('range', 'list', 'hash')),
  partition_key_id uuid NOT NULL,
  "interval"        text,
  retention         text,
  retention_keep_table boolean NOT NULL DEFAULT true,
  premake           int NOT NULL DEFAULT 2,
  naming_pattern    text NOT NULL DEFAULT '{parent}_{bounds}',
  is_parented       boolean NOT NULL DEFAULT false,

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  CONSTRAINT partition_database_fkey
    FOREIGN KEY (database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,

  CONSTRAINT partition_table_fkey
    FOREIGN KEY (table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,

  CONSTRAINT partition_key_field_fkey
    FOREIGN KEY (partition_key_id)
    REFERENCES metaschema_public.field (id),

  CONSTRAINT partition_table_unique
    UNIQUE (table_id)
);

CREATE INDEX partition_database_id_idx
  ON metaschema_public.partition (database_id);

COMMIT;
