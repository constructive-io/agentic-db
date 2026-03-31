-- Deploy: migrate/levels_module
-- made with <3 @ constructive.io

-- requires: migrate/limits_module


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_modules_public.levels_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  steps_table_id,
  steps_table_name,
  achievements_table_id,
  achievements_table_name,
  levels_table_id,
  levels_table_name,
  level_requirements_table_id,
  level_requirements_table_name,
  completed_step,
  incompleted_step,
  tg_achievement,
  tg_achievement_toggle,
  tg_achievement_toggle_boolean,
  tg_achievement_boolean,
  upsert_achievement,
  tg_update_achievements,
  steps_required,
  level_achieved,
  prefix,
  membership_type,
  entity_table_id,
  actor_table_id
) VALUES
  ('019d416f-5965-7a3b-8ea1-31a69258379c', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5966-717d-a590-da071769576d', '019d416f-5a0c-78e9-8ce9-ef4ce8014e01', '019d416f-5ac4-7ed2-b457-2381e2705bf9', 'app_steps', '019d416f-5d0d-7120-b8e8-50ad572d07ba', 'app_achievements', '019d416f-5f31-751e-a819-75f5ff86893f', 'app_levels', '019d416f-6154-7303-8ddd-be43ff66199c', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d416f-384a-79e2-9379-99ca3460e274'),
  ('019d416f-a92a-7245-8a59-8e7e1c2cf8ae', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5966-717d-a590-da071769576d', '019d416f-5a0c-78e9-8ce9-ef4ce8014e01', '019d416f-a9fe-7621-8ab7-c386812bca94', 'org_steps', '019d416f-acc6-76ea-84a4-0e258ff55989', 'org_achievements', '019d416f-af87-7a96-b7f6-eae4bb8ac904', 'org_levels', '019d416f-b1ee-72d7-9b1c-601bfd022c89', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-384a-79e2-9379-99ca3460e274');


SET session_replication_role TO DEFAULT;


