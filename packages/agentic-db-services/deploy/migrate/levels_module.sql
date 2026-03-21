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
  ('019d11d9-78c3-7446-ad98-929f4435c799', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-78c4-70db-98c4-bfc3f260c891', '019d11d9-796d-72a5-9b85-d8f30fe49093', '019d11d9-7a23-72a6-aead-5f3a724b491c', 'app_steps', '019d11d9-7c39-7696-a264-aa9a41021c04', 'app_achievements', '019d11d9-7e39-75bf-aff6-4443c41b546c', 'app_levels', '019d11d9-802e-7792-b910-56e68cf44ef9', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d11d9-5aed-7673-b41b-b11528f73f79'),
  ('019d11d9-cacb-73c0-a7aa-c88aa1591d50', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-78c4-70db-98c4-bfc3f260c891', '019d11d9-796d-72a5-9b85-d8f30fe49093', '019d11d9-cc75-72d4-b730-c390604827cb', 'org_steps', '019d11d9-cf47-79d1-b6d0-c612b18a2a0c', 'org_achievements', '019d11d9-d226-7a1b-932c-02f54205b796', 'org_levels', '019d11d9-d48a-7cf1-afdd-7f3478aa7f07', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-5aed-7673-b41b-b11528f73f79');


SET session_replication_role TO DEFAULT;


