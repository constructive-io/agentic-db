-- Deploy schemas/metaschema_modules_public/tables/events_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.events_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,


  -- Scope-key column name on the generated table(s), recorded by the insert
  -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
  -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
  entity_field text,
  --
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,
  --
  
  events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  events_table_name text NOT NULL DEFAULT '',

  event_aggregates_table_id uuid NOT NULL DEFAULT uuid_nil(),
  event_aggregates_table_name text NOT NULL DEFAULT '',

  event_types_table_id uuid NOT NULL DEFAULT uuid_nil(),
  event_types_table_name text NOT NULL DEFAULT '',

  levels_table_id uuid NOT NULL DEFAULT uuid_nil(),
  levels_table_name text NOT NULL DEFAULT '',

  level_requirements_table_id uuid NOT NULL DEFAULT uuid_nil(),
  level_requirements_table_name text NOT NULL DEFAULT '',

  level_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  level_grants_table_name text NOT NULL DEFAULT '',

  achievement_rewards_table_id uuid NOT NULL DEFAULT uuid_nil(),
  achievement_rewards_table_name text NOT NULL DEFAULT '',

  record_event text NOT NULL DEFAULT '',
  remove_event text NOT NULL DEFAULT '',
  tg_event text NOT NULL DEFAULT '',
  tg_event_toggle text NOT NULL DEFAULT '',
  tg_event_toggle_bool text NOT NULL DEFAULT '',
  tg_event_bool text NOT NULL DEFAULT '',
  upsert_aggregate text NOT NULL DEFAULT '',
  tg_update_aggregates text NOT NULL DEFAULT '',
  steps_required text NOT NULL DEFAULT '',
  level_achieved text NOT NULL DEFAULT '',
  tg_check_achievements text NOT NULL DEFAULT '',
  grant_achievement text NOT NULL DEFAULT '',
  tg_achievement_reward text NOT NULL DEFAULT '',

  -- Partition lifecycle configuration for events table
  "interval" text NOT NULL DEFAULT '1 month',
  retention text DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,

  -- Scope: determines the security level for this module instance.
  scope text NOT NULL,

  -- Table name prefix. Auto-derived from scope by the trigger when empty.
  prefix text NOT NULL DEFAULT '',

  -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
  entity_table_id uuid NULL,

  -- required tables    
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),


  -- Default permissions: permission names auto-granted to new members.
  -- NULL uses the module's built-in defaults; explicit array overrides them.
  default_permissions text[] DEFAULT NULL,

  -- API routing (configurable per-module)
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

  CONSTRAINT events_table_fkey FOREIGN KEY (events_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT event_aggregates_table_fkey FOREIGN KEY (event_aggregates_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT event_types_table_fkey FOREIGN KEY (event_types_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT levels_table_fkey FOREIGN KEY (levels_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT level_requirements_table_fkey FOREIGN KEY (level_requirements_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT level_grants_table_fkey FOREIGN KEY (level_grants_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT achievement_rewards_table_fkey FOREIGN KEY (achievement_rewards_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX events_module_database_id_idx ON metaschema_modules_public.events_module ( database_id );

COMMIT;
