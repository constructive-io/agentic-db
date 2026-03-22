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
  ('019d13bc-3bf5-7c07-8cf5-6ef90ac678b1', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3bf6-7272-af86-35c25e711f31', '019d13bc-3c85-7ddd-95c9-cf478bf92338', '019d13bc-3d20-7c9a-8a9f-34b23f54fedf', 'app_steps', '019d13bc-3ef7-7e72-9b45-0ff8dd597c64', 'app_achievements', '019d13bc-40c3-777c-b274-182df3d613d4', 'app_levels', '019d13bc-4294-7420-be6d-0f2104c03cf6', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, '019d13bc-21ae-7eb2-b63f-9fb476e22f09'),
  ('019d13bc-7eec-73b8-ad70-759856a0b0ab', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3bf6-7272-af86-35c25e711f31', '019d13bc-3c85-7ddd-95c9-cf478bf92338', '019d13bc-7f0e-7624-a5d8-f3bbe6fb9e31', 'org_steps', '019d13bc-819a-777b-b61e-b945faebcab3', 'org_achievements', '019d13bc-8402-7b5c-961d-753992f96652', 'org_levels', '019d13bc-8608-7e60-a25a-988a1106136a', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-21ae-7eb2-b63f-9fb476e22f09');


SET session_replication_role TO DEFAULT;


