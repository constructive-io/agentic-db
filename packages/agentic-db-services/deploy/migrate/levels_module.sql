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
  ('b8568376-c265-07e9-cbaa-29aa7c3ac622', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'fe765cb3-c2e5-fc6a-c1df-d034dbcae169', 'fff5efa1-8a12-a8a1-25dd-5c5893d934bb', 'app_steps', 'e6a6ee2e-4747-9025-0bc3-063e4872ec28', 'app_achievements', '29cc7376-2424-538a-74a6-b0c95d54f50e', 'app_levels', '78731b69-3697-94bc-e024-bce96708dead', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f'),
  ('038eeb6e-a485-750c-9497-0d0f8a10c096', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'fe765cb3-c2e5-fc6a-c1df-d034dbcae169', '0040a1c2-e213-f866-34ae-a5886d0d449c', 'org_steps', 'bcc89bb6-4ba4-d50d-68eb-c62db9bfeb7f', 'org_achievements', '15862449-e3aa-0d8a-e508-b029eba93f93', 'org_levels', '74f635e9-8097-e223-d1d4-025f2c6cc082', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f');


SET session_replication_role TO DEFAULT;


