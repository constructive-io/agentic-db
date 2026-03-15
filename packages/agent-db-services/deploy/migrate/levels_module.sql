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
  ('4314c9d9-181c-4d2b-afe6-6b3d81fadfd0', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', 'a008173a-a0a7-4f93-3657-ce27c46f7964', 'a008eebb-cc0e-4023-7b88-f1addf434330', 'app_steps', 'a008ca37-5496-45a7-9197-edee17ed921a', 'app_achievements', 'a008277d-c37f-48eb-7188-0033e1bcde2c', 'app_levels', 'a008803f-59e1-4d07-7df6-1e3915f6ae58', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, 'a0082485-cf01-4c72-8c4f-76422cceded1'),
  ('034f9cda-3ec5-4858-b251-e3e4dd7332f3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', 'a008173a-a0a7-4f93-3657-ce27c46f7964', 'a008bace-caac-4c8f-4249-a1557de9bc55', 'org_steps', 'a00839fe-89b2-4904-bcea-8755f0153d85', 'org_achievements', 'a0081c3c-3b54-43d5-b802-e545e419820c', 'org_levels', 'a0083581-0d4b-4ad2-78ca-ca472a2976d5', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0082485-cf01-4c72-8c4f-76422cceded1');


SET session_replication_role TO DEFAULT;


