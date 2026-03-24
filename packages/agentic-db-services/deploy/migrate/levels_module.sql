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
  ('019d21f8-3e3b-7e5b-9fa5-d9584cdf0e6e', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3e3c-75cf-a776-8578687f0b50', '019d21f8-3eda-7130-ac10-5a5b0584deef', '019d21f8-3f79-729d-84c3-5b3f6c503632', 'app_steps', '019d21f8-4166-7c01-91e1-442c91302026', 'app_achievements', '019d21f8-4330-7e38-9ab4-5c7edcff7201', 'app_levels', '019d21f8-4500-7fde-b6b8-d4e5ae988fda', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d21f8-2335-70cb-b636-53bf74d97668'),
  ('019d21f8-81f4-7401-8f23-ee035b0ceb42', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3e3c-75cf-a776-8578687f0b50', '019d21f8-3eda-7130-ac10-5a5b0584deef', '019d21f8-8216-7abd-a214-954ff7641c17', 'org_steps', '019d21f8-848e-7300-b2ed-d1d059539f4e', 'org_achievements', '019d21f8-86ff-74e6-81fd-073c36bb719e', 'org_levels', '019d21f8-890d-742f-b691-a2b8180617db', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2335-70cb-b636-53bf74d97668');


SET session_replication_role TO DEFAULT;


