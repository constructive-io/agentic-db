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
  ('48327817-494e-850f-d19e-9f1d771004b0', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'd83cb385-4291-63f4-3ca6-34471b254f01', 'b80b38aa-c3d3-24c0-ebc0-6e557619212e', 'app_steps', '9b411547-93a3-5952-0773-c914b00e71fa', 'app_achievements', '0383d66e-6f81-eccd-6656-1a3e5ec75626', 'app_levels', '3edf1d87-c5c4-d78e-3585-c006d8de8361', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '5353e947-3e3f-3914-7fd1-1370926dd743'),
  ('cdb97bd2-5b5b-1608-f559-463b74ee44f6', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'd83cb385-4291-63f4-3ca6-34471b254f01', '7b8e10a9-6b32-b8a4-27aa-d5b5abe2a1c1', 'org_steps', '76fbe540-5da1-bc69-2a97-95050fdc2363', 'org_achievements', '3a71356e-e573-5d43-6225-7dda26f5b835', 'org_levels', '7e55d3cd-dcd0-139b-8c1d-8d5a5bedde89', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '5353e947-3e3f-3914-7fd1-1370926dd743', '5353e947-3e3f-3914-7fd1-1370926dd743');


SET session_replication_role TO DEFAULT;


