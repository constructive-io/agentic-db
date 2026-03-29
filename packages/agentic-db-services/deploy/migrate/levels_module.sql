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
  ('019d37b9-d4a5-7638-a2c4-c85bbb8ee36d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', '019d37b9-d52f-7d59-8716-1c99edd81795', '019d37b9-d5ca-75e7-b531-fd0a5e22670e', 'app_steps', '019d37b9-d7c1-7e1b-9c35-44989ed405ed', 'app_achievements', '019d37b9-d994-7e84-8930-779bd994a52a', 'app_levels', '019d37b9-db47-7f02-bb51-6b505cfc087f', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4'),
  ('019d37ba-1e6d-7708-afa9-cd8c60e3109a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', '019d37b9-d52f-7d59-8716-1c99edd81795', '019d37ba-20ce-7e8d-b75d-15de85c83428', 'org_steps', '019d37ba-2336-7f6d-82db-80e4cc309c75', 'org_achievements', '019d37ba-2599-70d0-97eb-343c1b0c77eb', 'org_levels', '019d37ba-27a6-7702-ba83-40a124a80c03', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4');


SET session_replication_role TO DEFAULT;


