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
  ('019d1dbf-f8d9-7828-8818-5b70b26a5088', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', '019d1dbf-f96f-786d-8c51-061c426cf98f', '019d1dbf-fa15-722f-92fc-6919e34057d3', 'app_steps', '019d1dbf-fc1d-7b31-9441-8b1a377f2a3d', 'app_achievements', '019d1dbf-fe28-792e-b0a1-2c97b9929ffe', 'app_levels', '019d1dc0-0022-713e-98be-2691f2ebda07', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6'),
  ('019d1dc0-4d95-7902-86bc-2e99ca973273', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', '019d1dbf-f96f-786d-8c51-061c426cf98f', '019d1dc0-51fc-7462-8395-7b25a4f4c712', 'org_steps', '019d1dc0-54a8-7545-ab52-3780cb0d4954', 'org_achievements', '019d1dc0-5759-7e65-989d-c6ce72461896', 'org_levels', '019d1dc0-5984-7ceb-b9c7-d113761d016c', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6');


SET session_replication_role TO DEFAULT;


