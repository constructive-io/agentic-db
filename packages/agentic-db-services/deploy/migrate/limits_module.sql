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
  ('019d1736-62e4-77fe-927f-ffbb2fb856f0', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-62e4-7fa8-bf7c-9cc71dcb0873', '019d1736-635e-78c0-983d-73e509f72ac8', '019d1736-63dc-74f7-8813-be6563d06add', 'app_limits', '019d1736-6519-788c-922e-1ad5a4a293fc', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d1736-5b0d-7766-9f99-3cf518199163'),
  ('019d1736-920a-75f5-8e2a-b04746a17f8f', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-62e4-7fa8-bf7c-9cc71dcb0873', '019d1736-635e-78c0-983d-73e509f72ac8', '019d1736-9215-7235-a8a6-32a8974bedac', 'org_limits', '019d1736-93af-7984-9ff0-8e112a1d4990', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-5b0d-7766-9f99-3cf518199163');


SET session_replication_role TO DEFAULT;


