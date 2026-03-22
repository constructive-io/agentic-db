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
  ('019d1795-6274-76e8-807c-4ffcf2d543a2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6275-70aa-9814-444b221e3a6d', '019d1795-62fa-7665-a401-4e3131e3c95f', '019d1795-638a-73ea-8dac-47f079213fef', 'app_steps', '019d1795-6576-785b-9123-2c6b1b118196', 'app_achievements', '019d1795-673e-7409-8b55-6652e0cc2f3c', 'app_levels', '019d1795-6912-7289-83f9-da869942d37a', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d1795-494e-7deb-bd76-39af3a5fa635'),
  ('019d1795-aa07-709a-91c0-d7004f93b871', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6275-70aa-9814-444b221e3a6d', '019d1795-62fa-7665-a401-4e3131e3c95f', '019d1795-aab6-79b1-b10b-d0684b01f858', 'org_steps', '019d1795-ad42-79be-ad2a-4d16a6775aec', 'org_achievements', '019d1795-afe9-71c6-b184-df41cfc56ed4', 'org_levels', '019d1795-b205-7dc6-82e4-5d3fa4e8062f', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-494e-7deb-bd76-39af3a5fa635');


SET session_replication_role TO DEFAULT;


