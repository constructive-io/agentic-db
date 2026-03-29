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
  ('ba2f878a-087e-6005-f187-5855052c75fd', '14b01c2d-072a-5594-645a-675751a83d86', '60b82ba9-4f66-84f7-aab8-5a3ee1bd6fe8', 'cbc61d43-ac18-5796-2c32-90c8f324b121', 'faf0f5b5-04b6-9296-6261-ef1c05763d61', 'org_steps', 'ef68a624-cc51-591a-8dff-8d0bab00560c', 'org_achievements', '8fe9e6da-9e0f-3ac1-c970-bf777ca21dbc', 'org_levels', '91f23894-6f86-af58-0cf9-3ad402891f5d', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '5258dec3-0cde-6103-1859-08598c428740', '5258dec3-0cde-6103-1859-08598c428740'),
  ('f45da41c-2063-a9c6-34df-5667efcc0757', '14b01c2d-072a-5594-645a-675751a83d86', '60b82ba9-4f66-84f7-aab8-5a3ee1bd6fe8', 'cbc61d43-ac18-5796-2c32-90c8f324b121', 'f3c2a654-6b69-4cf2-466a-6e662cc4ed94', 'app_steps', '681f0df2-075a-ca20-6898-764e8624189e', 'app_achievements', 'a8855ef3-982b-16d8-4b6d-7c2cd31df634', 'app_levels', '055b393d-6690-20d4-4a0d-ee15c45beaa6', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '5258dec3-0cde-6103-1859-08598c428740');


SET session_replication_role TO DEFAULT;


