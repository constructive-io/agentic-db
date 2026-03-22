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
  ('019d130d-1477-7f00-b541-d18b564a03ec', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', '019d130d-153a-70ed-b43a-a6a92517f8dc', '019d130d-1609-7e13-99c4-c43945e91250', 'app_steps', '019d130d-1856-7f8d-9205-6dc58b19a41a', 'app_achievements', '019d130d-1ab4-7201-9889-7832defb7eb9', 'app_levels', '019d130d-1ce0-7259-b030-92e697b7e7a6', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d130c-f14b-7ef8-94e3-e005503a699d'),
  ('019d130d-68ae-74c2-9ce6-cab18be8e331', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1478-775d-af81-1a664aec861e', '019d130d-153a-70ed-b43a-a6a92517f8dc', '019d130d-696b-718b-b9cc-2ef78221690d', 'org_steps', '019d130d-6cc0-793d-a9eb-1f9e6cd47de6', 'org_achievements', '019d130d-6fb4-7ec0-84f2-a03dcf2d7d2d', 'org_levels', '019d130d-7263-7fe9-870c-ab8a701c5559', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f14b-7ef8-94e3-e005503a699d');


SET session_replication_role TO DEFAULT;


