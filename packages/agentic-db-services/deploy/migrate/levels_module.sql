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
  ('019d2727-8e23-7099-aaab-f6e093727eda', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-8e23-776f-810f-30a672214fee', '019d2727-8eb6-734b-a8ec-44bdf575cea4', '019d2727-8f5b-704d-9b73-aab56e501f59', 'app_steps', '019d2727-9131-702f-8dd4-266594a8f5f5', 'app_achievements', '019d2727-930b-72e9-83e1-78af1215e4ac', 'app_levels', '019d2727-94c8-724c-bd23-42be11a94a4b', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d2727-7153-7bae-b8ec-6f398ecf0b75'),
  ('019d2727-dcc6-7611-8bc1-0b396c1231ea', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-8e23-776f-810f-30a672214fee', '019d2727-8eb6-734b-a8ec-44bdf575cea4', '019d2727-e010-7331-8986-6d96c4c6c0b0', 'org_steps', '019d2727-e284-7c16-9526-cf72cf157e96', 'org_achievements', '019d2727-e510-7e6e-8933-2ddf5f73e781', 'org_levels', '019d2727-e737-75ae-a9ce-602ea383e905', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7153-7bae-b8ec-6f398ecf0b75');


SET session_replication_role TO DEFAULT;


