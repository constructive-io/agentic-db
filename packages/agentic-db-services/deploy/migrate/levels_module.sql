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
  ('019d1736-73f9-7c8e-a811-916918d4c805', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-73fa-76db-b254-e0f8632658a4', '019d1736-7484-76d1-b753-afa075ca8490', '019d1736-7516-77d7-a31c-e37c483ead94', 'app_steps', '019d1736-76eb-7cdf-bc1c-9c6651143259', 'app_achievements', '019d1736-78b4-7231-93d3-6cb25535db4a', 'app_levels', '019d1736-7a72-75a2-8672-1a8596da4696', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d1736-5b0d-7766-9f99-3cf518199163'),
  ('019d1736-b41b-76d9-b0c7-e56c66892da0', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-73fa-76db-b254-e0f8632658a4', '019d1736-7484-76d1-b753-afa075ca8490', '019d1736-b430-7ba8-a8a1-3e493d2af11a', 'org_steps', '019d1736-b6b2-7317-ae59-10b9b9678785', 'org_achievements', '019d1736-b916-72f9-86ad-9708ceb4ed17', 'org_levels', '019d1736-bb1e-7e90-9774-ecb309d44ccf', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-5b0d-7766-9f99-3cf518199163');


SET session_replication_role TO DEFAULT;


