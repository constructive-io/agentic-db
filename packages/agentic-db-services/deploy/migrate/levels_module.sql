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
  ('019d0ffe-6d73-768f-92a3-fa8d90579378', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', '019d0ffe-6e0f-7dfd-81e6-17f69d062f48', '019d0ffe-6eba-7e00-9f1b-ea7405cdc21e', 'app_steps', '019d0ffe-70c5-7bec-b0ca-63b716d4aa32', 'app_achievements', '019d0ffe-72bc-70a3-a3ec-92062ad817c9', 'app_levels', '019d0ffe-74a8-7248-918a-acc1c629efe4', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d0ffe-509c-7e69-b073-260da2d7f651'),
  ('019d0ffe-b682-7eaa-aab1-c675fc1f05d8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-6d73-7f1b-9df9-450724399b61', '019d0ffe-6e0f-7dfd-81e6-17f69d062f48', '019d0ffe-b6f8-797c-93e1-c2c7c16e9153', 'org_steps', '019d0ffe-b97c-75ba-8bba-db0de9911686', 'org_achievements', '019d0ffe-bc01-75ee-972a-2f9db34db510', 'org_levels', '019d0ffe-be33-79bc-9bf1-beb386e03493', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-509c-7e69-b073-260da2d7f651');


SET session_replication_role TO DEFAULT;


