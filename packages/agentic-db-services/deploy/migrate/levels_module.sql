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
  ('019d2831-8241-7e37-a57e-ca01f02b7908', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8242-76a0-960a-c3d061c2b4f5', '019d2831-82de-7d77-9f6a-db142ac57172', '019d2831-8384-7dc9-ba7d-98cc5eec8e17', 'app_steps', '019d2831-8592-706c-ab94-a56a04ff2197', 'app_achievements', '019d2831-879a-70b4-b0ae-6125d2d63710', 'app_levels', '019d2831-898d-74a7-8578-c64d0dcb4e6a', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d2831-6349-7cde-a517-c115bf8f4bff'),
  ('019d2831-d8e6-7221-b84f-efc4fc357147', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8242-76a0-960a-c3d061c2b4f5', '019d2831-82de-7d77-9f6a-db142ac57172', '019d2831-dd63-7d18-8284-b78087b34340', 'org_steps', '019d2831-dff9-7cf5-a358-be99b1ef8943', 'org_achievements', '019d2831-e294-7c03-9790-446ad5c7ef9d', 'org_levels', '019d2831-e4cd-7ea0-8ede-3c44fd3ff0d9', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6349-7cde-a517-c115bf8f4bff');


SET session_replication_role TO DEFAULT;


