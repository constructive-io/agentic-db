-- Deploy schemas/metaschema_modules_public/tables/db_usage_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.db_usage_module (
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

  -- DB table stats log (partitioned — per-table reads/writes/size from pg_stat_user_tables)
  table_stats_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_stats_log_table_name text NOT NULL DEFAULT '',

  -- DB table stats usage summary rollup
  table_stats_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_stats_summary_table_name text NOT NULL DEFAULT '',

  -- DB query stats log (partitioned — query execution time from pg_stat_statements)
  query_stats_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  query_stats_log_table_name text NOT NULL DEFAULT '',

  -- DB query stats usage summary rollup
  query_stats_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  query_stats_summary_table_name text NOT NULL DEFAULT '',

  -- Generated functions
  collect_db_table_stats_function text NOT NULL DEFAULT '',
  collect_db_query_stats_function text NOT NULL DEFAULT '',
  rollup_db_table_stats_usage_summary_function text NOT NULL DEFAULT '',
  rollup_db_query_stats_usage_summary_function text NOT NULL DEFAULT '',

  -- Partition lifecycle configuration
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,

  -- Scope configuration: 'app' = per-app usage
  scope text NOT NULL,

  -- Table name prefix. Auto-derived from scope by the trigger when empty.
  prefix text NOT NULL DEFAULT '',

  -- Default permissions: permission names auto-granted to new members.
  -- NULL uses the module's built-in defaults; explicit array overrides them.
  default_permissions text[] DEFAULT NULL,

  -- API routing (configurable per-module)
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT table_stats_log_table_fkey FOREIGN KEY (table_stats_log_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT table_stats_summary_table_fkey FOREIGN KEY (table_stats_summary_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT query_stats_log_table_fkey FOREIGN KEY (query_stats_log_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT query_stats_summary_table_fkey FOREIGN KEY (query_stats_summary_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT db_usage_module_database_id_scope_unique UNIQUE (database_id, scope)
);

CREATE INDEX db_usage_module_database_id_idx ON metaschema_modules_public.db_usage_module ( database_id );

COMMIT;
