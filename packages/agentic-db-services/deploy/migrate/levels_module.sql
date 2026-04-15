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
  ('019d934f-b449-7207-aafd-6b544fb1e23c', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b449-7b86-b434-c6dcc727af17', '019d934f-b534-709a-a6b2-49b1d3cf925e', '019d934f-b650-73cc-bdf1-ce421a67eb2d', 'app_steps', '019d934f-b927-73a0-a67d-89f7789b89a6', 'app_achievements', '019d934f-bbfe-7270-9f4b-3770020c8714', 'app_levels', '019d934f-beaf-7e77-8b9b-9ccbc2a80fb8', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d934f-898e-73d5-9f57-6c8589048db5'),
  ('019d9350-1bdf-796b-a30c-f528edd25c3c', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b449-7b86-b434-c6dcc727af17', '019d934f-b534-709a-a6b2-49b1d3cf925e', '019d9350-1c52-7958-a6e5-fe2de04520d1', 'org_steps', '019d9350-1fec-7da3-84f1-c1f26bb7f98e', 'org_achievements', '019d9350-2388-7dd4-a7a3-2fe061328651', 'org_levels', '019d9350-270a-7ec2-b5f0-4559e2f1e21f', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-898e-73d5-9f57-6c8589048db5');


SET session_replication_role TO DEFAULT;


