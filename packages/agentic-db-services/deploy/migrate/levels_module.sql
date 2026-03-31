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
  ('019d42ff-e971-7c28-9b02-24b3bc08316f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', '019d42ff-ea0d-7200-b7ae-f92d8b4d3a40', '019d42ff-eaca-7b29-8f97-9e12290e6f71', 'app_steps', '019d42ff-ecee-7cb7-85c9-ec3e820ad114', 'app_achievements', '019d42ff-ef01-7981-af58-a4608bdd3944', 'app_levels', '019d42ff-f10e-710d-b73f-1d050e449b80', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d42ff-ca62-77a0-ab97-b8d784c420dc'),
  ('019d4300-3317-7af7-b8ee-25e95424346a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', '019d42ff-ea0d-7200-b7ae-f92d8b4d3a40', '019d4300-333c-7a81-bf82-d4edfdce00d9', 'org_steps', '019d4300-35f2-77c7-9b06-5f22f5bb10c2', 'org_achievements', '019d4300-38b1-71b8-84cc-a811eda4b5de', 'org_levels', '019d4300-3b05-72c1-81d9-5c2bad43d37b', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-ca62-77a0-ab97-b8d784c420dc');


SET session_replication_role TO DEFAULT;


