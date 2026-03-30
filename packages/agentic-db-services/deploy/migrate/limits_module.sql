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
  ('019d3d14-ef37-7ed0-a894-a46a66dbbaf7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ef38-7646-a438-2558ec621de0', '019d3d14-efb1-794e-8eee-db9422566dca', '019d3d14-f030-7478-b49a-45d1319580f2', 'app_limits', '019d3d14-f16c-7f7a-b518-0abc63089e86', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d3d14-e756-7f18-bcd9-be9300e74947'),
  ('019d3d15-1f0c-73fe-93b2-4b007c926829', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ef38-7646-a438-2558ec621de0', '019d3d14-efb1-794e-8eee-db9422566dca', '019d3d15-1f17-78e1-855a-0db7a8b99cac', 'org_limits', '019d3d15-20ba-7e23-b52d-f6dad084b9db', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-e756-7f18-bcd9-be9300e74947');


SET session_replication_role TO DEFAULT;


