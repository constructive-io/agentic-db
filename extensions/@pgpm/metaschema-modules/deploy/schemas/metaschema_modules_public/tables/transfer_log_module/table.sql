-- Deploy schemas/metaschema_modules_public/tables/transfer_log_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.transfer_log_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,


  -- Scope-key column name on the generated table(s), recorded by the insert
  -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
  -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,

  -- Transfer log table (partitioned by created_at)
  transfer_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  transfer_log_table_name text NOT NULL DEFAULT '',

  -- Pre-aggregated usage summary rollup table
  usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  usage_summary_table_name text NOT NULL DEFAULT '',

  -- Partition lifecycle configuration
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,

  -- Scope configuration: 'app' = per-app usage (actor_id RLS)
  scope text NOT NULL,
  actor_fk_table_id uuid NULL,
  entity_fk_table_id uuid NULL,

  -- Table name prefix. Auto-derived from scope by the trigger when empty.
  prefix text NOT NULL DEFAULT '',

  -- API routing (configurable per-module)
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT transfer_log_table_fkey FOREIGN KEY (transfer_log_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT usage_summary_table_fkey FOREIGN KEY (usage_summary_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT transfer_log_module_database_id_prefix_unique UNIQUE NULLS NOT DISTINCT (database_id, prefix)
);

CREATE INDEX transfer_log_module_database_id_idx ON metaschema_modules_public.transfer_log_module ( database_id );

COMMIT;
