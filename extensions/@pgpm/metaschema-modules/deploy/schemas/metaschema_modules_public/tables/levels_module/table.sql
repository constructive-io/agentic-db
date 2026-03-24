-- Deploy schemas/metaschema_modules_public/tables/levels_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.levels_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,

  --
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  --
  
  steps_table_id uuid NOT NULL DEFAULT uuid_nil(),
  steps_table_name text NOT NULL DEFAULT '',

  achievements_table_id uuid NOT NULL DEFAULT uuid_nil(),
  achievements_table_name text NOT NULL DEFAULT '',

  levels_table_id uuid NOT NULL DEFAULT uuid_nil(),
  levels_table_name text NOT NULL DEFAULT '',

  level_requirements_table_id uuid NOT NULL DEFAULT uuid_nil(),
  level_requirements_table_name text NOT NULL DEFAULT '',

  completed_step text NOT NULL DEFAULT '',
  incompleted_step text NOT NULL DEFAULT '',
  tg_achievement text NOT NULL DEFAULT '',
  tg_achievement_toggle text NOT NULL DEFAULT '',
  tg_achievement_toggle_boolean text NOT NULL DEFAULT '',
  tg_achievement_boolean text NOT NULL DEFAULT '',
  upsert_achievement text NOT NULL DEFAULT '',
  tg_update_achievements text NOT NULL DEFAULT '',
  steps_required text NOT NULL DEFAULT '',
  level_achieved text NOT NULL DEFAULT '',

  prefix text NULL,

  membership_type int NOT NULL,
  -- if this is NOT NULL, then we add entity_id 
  -- e.g. limits to the app itself are considered global owned by app and no explicit owner
  entity_table_id uuid NULL,

  -- required tables    
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),


  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

  CONSTRAINT steps_table_fkey FOREIGN KEY (steps_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT achievements_table_fkey FOREIGN KEY (achievements_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT levels_table_fkey FOREIGN KEY (levels_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT level_requirements_table_fkey FOREIGN KEY (level_requirements_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey FOREIGN KEY (actor_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX user_status_module_database_id_idx ON metaschema_modules_public.levels_module ( database_id );

COMMIT;
