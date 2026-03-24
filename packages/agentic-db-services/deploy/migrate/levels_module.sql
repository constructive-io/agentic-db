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
  ('268d6621-b271-d663-227f-403e5528fa1f', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', '0ccc8ccf-e55c-3b1f-bc25-c6f20115dade', 'f9461efb-93ba-0360-fdfd-8851ee2984d6', 'app_steps', 'ab6ccf66-358e-997c-9f2e-3c462272368e', 'app_achievements', '538fdc6c-79bb-ec6a-1739-1ab9adffe17f', 'app_levels', 'dc415279-8ed8-8877-da7f-9e0be8a79aa5', 'app_level_requirements', 'completed_step', 'incompleted_step', 'tg_achv', 'tg_achv_tgl', 'tg_achv_tgl_bool', 'tg_achv_bool', 'upsert_achve', 'tg_upd_achv', 'steps_required', 'steps_achieved', 'app', 1, NULL, 'a42ab990-9bfb-d930-3f98-a01493cc2158'),
  ('caa15601-0804-3532-f360-78e588e2959c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', '0ccc8ccf-e55c-3b1f-bc25-c6f20115dade', 'c657f034-10a8-e0c2-d7b9-e6aa45e97933', 'org_steps', '5199c324-cd9d-3900-3d5e-52240e66faed', 'org_achievements', '4016556a-5c09-c2d5-08b7-75ad09d1ccb0', 'org_levels', '1439ccf1-c5bf-4f9a-031a-1df77734c4dc', 'org_level_requirements', 'member_completed_step', 'member_incompleted_step', 'member_tg_achv', 'member_tg_achv_tgl', 'member_tg_achv_tgl_bool', 'member_tg_achv_bool', 'member_upsert_achve', 'member_tg_upd_achv', 'member_steps_required', 'member_steps_achieved', 'org', 2, 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'a42ab990-9bfb-d930-3f98-a01493cc2158');


SET session_replication_role TO DEFAULT;


