-- Deploy: migrate/limits_module
-- made with <3 @ constructive.io

-- requires: migrate/permissions_module


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

INSERT INTO metaschema_modules_public.limits_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  table_name,
  default_table_id,
  default_table_name,
  limit_increment_function,
  limit_decrement_function,
  limit_increment_trigger,
  limit_decrement_trigger,
  limit_update_trigger,
  limit_check_function,
  prefix,
  membership_type,
  entity_table_id,
  actor_table_id
) VALUES
  ('0003fdee-0ed3-242c-d59c-d9af3ca718dc', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'eeb1aa89-f88f-71ab-1cb6-5bd4633ab5ff', '41522d16-f0fd-c418-fb1c-90d01f32bc70', 'org_limits', 'ae1320b5-a1ae-990f-891b-b1071ae2bb2c', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'a42ab990-9bfb-d930-3f98-a01493cc2158'),
  ('1b3e0538-d86b-5730-f581-b2768d05057f', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'eeb1aa89-f88f-71ab-1cb6-5bd4633ab5ff', '03f2cd01-accc-0d7d-9adb-831fa4aa2406', 'app_limits', '98928e8a-bad3-e9cd-cbc3-6d5b0fd705b2', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, 'a42ab990-9bfb-d930-3f98-a01493cc2158');


SET session_replication_role TO DEFAULT;


