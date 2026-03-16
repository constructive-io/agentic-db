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
  ('0f12d040-6474-4922-8478-1276d0562e43', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', 'bfc12466-188e-402f-9505-21943ccb2435', 'bfc1de89-11fb-4113-fcf1-64adbdd1d4ed', 'app_steps', 'bfc11d06-4b6e-46c4-e7ca-fe2a7df5073c', 'app_achievements', 'bfc1a069-ae99-4ca2-282e-2f033d1cf343', 'app_levels', 'bfc18d71-0029-4d12-bdf9-1d2ff6378100', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353'),
  ('c9463237-65cd-47c3-994e-9ece52ea05e9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', 'bfc12466-188e-402f-9505-21943ccb2435', 'bfc1c7c9-0f1b-4e0e-cab7-640320b8b60c', 'org_steps', 'bfc1ea84-ff82-416a-1519-911757164ab0', 'org_achievements', 'bfc17291-5f98-4e21-b9e7-2350f06f3a9e', 'org_levels', 'bfc1b5f0-9eda-4e20-6af4-254df874325b', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353');


SET session_replication_role TO DEFAULT;


