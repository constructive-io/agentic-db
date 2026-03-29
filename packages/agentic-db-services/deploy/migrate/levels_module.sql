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
  ('314d864c-ad84-54b9-935a-ba65bdbd0dfb', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', '42e601b4-c9b7-85c6-8070-280206198cb1', '2f691d0e-4370-7fc3-0e8d-c174b571a57f', 'org_steps', 'a39edbea-985a-cc3d-063e-ca79f0f2d86e', 'org_achievements', '3f094c1d-dbc3-c508-ffb5-a20156597ce2', 'org_levels', 'bd29b3d6-8fb7-1706-6a48-cd875c3c7234', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '5b5d99e1-9167-1378-cf99-58449ebc35bc', '5b5d99e1-9167-1378-cf99-58449ebc35bc'),
  ('737c3773-e22c-1649-afa0-a431df031964', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', '42e601b4-c9b7-85c6-8070-280206198cb1', 'a4b7ee24-9368-d90a-61f0-a9c73a3ee4a7', 'app_steps', '4ce6beb8-c8ed-c6a4-3ab2-2397bf46ae16', 'app_achievements', '8a1dd501-6a68-5415-5f3c-93b0ae2023d8', 'app_levels', '2149b42b-46a9-3ab4-b5b3-7532b438192e', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '5b5d99e1-9167-1378-cf99-58449ebc35bc');


SET session_replication_role TO DEFAULT;


