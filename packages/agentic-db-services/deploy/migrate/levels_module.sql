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
  ('019d20cd-96d0-7ba8-acc1-ff4caa287227', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-96d1-7340-a5a1-f4a157852688', '019d20cd-9768-738c-9adb-ae0eac103b6f', '019d20cd-980d-712d-9a3e-224043d50007', 'app_steps', '019d20cd-9a26-71c5-a977-8952aa62023b', 'app_achievements', '019d20cd-9c33-71fc-8eb8-12a92ef07d19', 'app_levels', '019d20cd-9e1a-734c-b82c-31b7927b10c1', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d20cd-7a20-7176-823e-cca436cf06f3'),
  ('019d20cd-e08d-787a-b994-673be2b1028a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-96d1-7340-a5a1-f4a157852688', '019d20cd-9768-738c-9adb-ae0eac103b6f', '019d20cd-e0b0-75a2-8e58-3b3f566cadb7', 'org_steps', '019d20cd-e354-7a32-82e5-71d6a0abc3db', 'org_achievements', '019d20cd-e605-7e4b-96db-b24f01090abd', 'org_levels', '019d20cd-e847-77d7-abb3-2e36f0db01db', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-7a20-7176-823e-cca436cf06f3');


SET session_replication_role TO DEFAULT;


