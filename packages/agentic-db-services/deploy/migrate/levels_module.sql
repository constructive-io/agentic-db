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
  ('019d3d15-00df-7a8b-87f8-337a9d2c71da', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-00e0-7300-94bf-42cdbc3e8b9e', '019d3d15-016c-7a1a-b35f-2013f481914b', '019d3d15-0204-716d-aa36-f8c9e3dbffdb', 'app_steps', '019d3d15-03e8-7cdb-ad8b-0b5863ae8c21', 'app_achievements', '019d3d15-05b5-7383-83b5-0c8fdd30e1bc', 'app_levels', '019d3d15-077f-7ae3-a2c8-fc94d29aa161', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d3d14-e756-7f18-bcd9-be9300e74947'),
  ('019d3d15-412f-771d-861c-2a9bd047ec2c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-00e0-7300-94bf-42cdbc3e8b9e', '019d3d15-016c-7a1a-b35f-2013f481914b', '019d3d15-4145-76e1-b21f-f66b5a7d9970', 'org_steps', '019d3d15-43a2-7fc6-b584-6087c72ba950', 'org_achievements', '019d3d15-45ff-7f3e-8835-fbe7e80e3648', 'org_levels', '019d3d15-481c-7507-9bed-6e2a5c9410f0', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-e756-7f18-bcd9-be9300e74947');


SET session_replication_role TO DEFAULT;


