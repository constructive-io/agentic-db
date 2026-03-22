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
  ('90bf8952-dfb6-9b63-3234-0c01e66b9c58', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '156281d5-710d-45aa-9729-fb999412dfc5', '02711eaa-629d-c8fc-8ca3-c2998fccfeba', '89c6695d-d93b-2af9-3a48-d3fb6d0be4f4', 'app_steps', 'e607c617-5134-1ede-948c-e2faa9705b6c', 'app_achievements', 'fa1880f0-eb5b-e354-644a-d541e5b22d13', 'app_levels', '14034164-9615-1645-7c0e-c02356a9ae26', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '5d9c849b-e962-041a-de77-54774d5d1e62'),
  ('390eab50-98cf-d0e9-0bd6-92213b2699b7', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '156281d5-710d-45aa-9729-fb999412dfc5', '02711eaa-629d-c8fc-8ca3-c2998fccfeba', '4068e458-958b-7c54-f0a3-fc0852e95285', 'org_steps', '8eecdcca-9af7-dc8c-025d-ff62c9d4cd68', 'org_achievements', '5ffd53e3-5752-946d-927d-270890023387', 'org_levels', '51536abc-e81f-40ac-e1a1-c03c857ebeea', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '5d9c849b-e962-041a-de77-54774d5d1e62', '5d9c849b-e962-041a-de77-54774d5d1e62');


SET session_replication_role TO DEFAULT;


