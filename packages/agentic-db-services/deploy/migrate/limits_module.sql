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
  ('019d11d9-6436-7965-b59e-3833c1bbcddb', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6437-727c-877f-51da87756a96', '019d11d9-64c0-75b8-bf4d-0b7d00404a3b', '019d11d9-6556-7cf8-a5f5-76303fdb890e', 'app_limits', '019d11d9-66bf-741b-a410-2dca24ec5f99', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d11d9-5aed-7673-b41b-b11528f73f79'),
  ('019d11d9-9d29-7efa-af91-12a6493f962c', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6437-727c-877f-51da87756a96', '019d11d9-64c0-75b8-bf4d-0b7d00404a3b', '019d11d9-9e6d-756a-b6e0-866693413e39', 'org_limits', '019d11d9-a070-7071-a564-da9ac762e36d', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-5aed-7673-b41b-b11528f73f79');


SET session_replication_role TO DEFAULT;


