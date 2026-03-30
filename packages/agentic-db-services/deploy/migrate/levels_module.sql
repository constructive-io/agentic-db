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
  ('019d3dab-1cea-7f17-965f-bda3b5f9e2f8', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', '019d3dab-1d7e-7715-87ad-f84cbaf8659d', '019d3dab-1e2c-7ec8-a118-bd7e47a488d7', 'app_steps', '019d3dab-2028-7e89-bcf3-4b6bbe2df951', 'app_achievements', '019d3dab-2211-7d81-82f3-cb38ffb32790', 'app_levels', '019d3dab-23fc-7c04-a911-a89c35053919', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d3dab-00a9-731d-b66d-d5d69c0909a6'),
  ('019d3dab-66d2-7423-b05f-f164093f00f2', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', '019d3dab-1d7e-7715-87ad-f84cbaf8659d', '019d3dab-66f5-786b-99e7-53aab0e23234', 'org_steps', '019d3dab-69c9-7c3b-a894-a1d3dfbb109f', 'org_achievements', '019d3dab-6c7b-7903-9d0e-0ac45dc6b5a2', 'org_levels', '019d3dab-6ec4-734c-bbc2-6972715c2215', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-00a9-731d-b66d-d5d69c0909a6');


SET session_replication_role TO DEFAULT;


