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
  ('019d4100-62f3-736a-a0a8-4f0aa694aca8', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-62f3-7a62-98ba-43c01a18a9cf', '019d4100-6389-7a8d-9a65-7a0cee4749fc', '019d4100-6437-75a2-a920-d4de4597dfa2', 'app_steps', '019d4100-6637-79c4-ba77-99676e8b4233', 'app_achievements', '019d4100-6832-78a6-b9b7-6d4b7000e730', 'app_levels', '019d4100-6a0e-76ac-8766-07382f02303e', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d4100-42f6-7ae2-9811-58ffe46470b0'),
  ('019d4100-b624-77e5-a6e3-5cbd96420d8d', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-62f3-7a62-98ba-43c01a18a9cf', '019d4100-6389-7a8d-9a65-7a0cee4749fc', '019d4100-b9d6-7e31-9040-40c311d9ce93', 'org_steps', '019d4100-bc6e-7fa2-ac21-4df19783b294', 'org_achievements', '019d4100-bf15-7737-b110-355103fda560', 'org_levels', '019d4100-c151-7728-b36f-2facd54440af', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-42f6-7ae2-9811-58ffe46470b0');


SET session_replication_role TO DEFAULT;


