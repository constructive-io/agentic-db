-- Deploy schemas/metaschema_public/tables/table/table to pg
-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/types/object_category
-- requires: schemas/metaschema_private/procedures/is_valid_step_up

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

  use_rls boolean NOT NULL DEFAULT FALSE,
  
  timestamps boolean NOT NULL DEFAULT FALSE,
  peoplestamps boolean NOT NULL DEFAULT FALSE,

  plural_name text,
  singular_name text,

  tags citext[] NOT NULL DEFAULT '{}',

  step_up jsonb DEFAULT NULL,

  partitioned boolean NOT NULL DEFAULT false,
  partition_strategy text DEFAULT NULL,
  partition_key_names text[] DEFAULT NULL,
  partition_key_types text[] DEFAULT NULL,

  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  
  UNIQUE (database_id, schema_id, name),

  CONSTRAINT table_step_up_check CHECK (
    step_up IS NULL OR metaschema_private.is_valid_step_up(step_up)
  )
);

COMMENT ON COLUMN metaschema_public.table.step_up IS
  'Declarative step-up auth guard: jsonb object mapping DML verbs (INSERT, UPDATE, DELETE) to a step-up spec. Values: true (default password_or_mfa), a type string (password / mfa / password_or_mfa), or an object {type, min_age, min_age_lookup, conditions} where min_age is an interval string (e.g. 6 hours) gating the guard to rows older than that age (UPDATE/DELETE only), min_age_lookup resolves per-row windows from a lookup table, and conditions is a declarative WHEN-clause tree compiled by build_condition_expr.';

ALTER TABLE metaschema_public.table ADD COLUMN
    inherits_id uuid NULL REFERENCES metaschema_public.table(id);


CREATE INDEX table_schema_id_idx ON metaschema_public.table ( schema_id );
CREATE INDEX table_database_id_idx ON metaschema_public.table ( database_id );

COMMIT;

