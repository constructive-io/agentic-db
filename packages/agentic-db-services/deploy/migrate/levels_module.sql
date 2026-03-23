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
  ('019d19cf-2546-73f7-afa4-e8eadeb965a2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2546-7c03-8ac0-024b62131d47', '019d19cf-25dd-7bec-8590-2f1edefaa365', '019d19cf-268d-7797-9275-bb271f893c40', 'app_steps', '019d19cf-289a-7785-9339-bcbf7bf690a2', 'app_achievements', '019d19cf-2a8c-7aad-80c0-68187f1e7e9e', 'app_levels', '019d19cf-2ca2-7556-984c-cd0e57d87b18', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d19cf-04f9-762a-946a-add4e6430409'),
  ('019d19cf-7a4e-7376-b825-11cb5d65d077', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2546-7c03-8ac0-024b62131d47', '019d19cf-25dd-7bec-8590-2f1edefaa365', '019d19cf-7df0-7944-9089-22bfeb931b62', 'org_steps', '019d19cf-809c-70df-8511-fcd7dab36dfc', 'org_achievements', '019d19cf-835e-76d2-8b65-dcf71c112768', 'org_levels', '019d19cf-85a6-7036-82e5-41d88057c72d', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-04f9-762a-946a-add4e6430409');


SET session_replication_role TO DEFAULT;


