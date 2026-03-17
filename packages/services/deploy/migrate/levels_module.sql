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
  ('f66d468d-2152-45f8-8f25-0a5e8d948380', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', '9bc13aa2-3ca4-47e8-2c28-3d1de930d857', '9bc14abb-0b63-4c53-9f37-7dea2661aa41', 'app_steps', '9bc1e6ec-a224-468f-8183-ed662ca66180', 'app_achievements', '9bc143ae-941f-4b88-7f45-a1589cf4df98', 'app_levels', '9bc11b2c-6017-4a7f-d2f7-f0b90273dd10', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '9bc12972-1a70-4812-beb6-f24029a19ea6'),
  ('0ff21409-9e34-496f-9355-2b93b84dfeba', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', '9bc13aa2-3ca4-47e8-2c28-3d1de930d857', '9bc19bc6-8673-4d9a-e27d-51dc1ae41ef8', 'org_steps', '9bc1d988-ff77-4ba4-ea03-7c84a251dc16', 'org_achievements', '9bc15146-81ff-4f76-f31d-b67c2b2e8e39', 'org_levels', '9bc16ead-adf5-477c-2aaf-afd16488fef8', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc12972-1a70-4812-beb6-f24029a19ea6');


SET session_replication_role TO DEFAULT;


