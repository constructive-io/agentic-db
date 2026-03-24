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
  ('019d1dbf-e373-7bde-b8f6-259949b66f53', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', '019d1dbf-e3f6-78ef-9642-13f3dec365eb', '019d1dbf-e483-76c9-9398-83b95c939a37', 'app_limits', '019d1dbf-e5d8-7cf9-a08e-6ca25df7cce7', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6'),
  ('019d1dc0-1d3b-7e94-b8c6-aff4c968f1c5', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', '019d1dbf-e3f6-78ef-9642-13f3dec365eb', '019d1dc0-2089-7dcf-80cf-297bd5b261fb', 'org_limits', '019d1dc0-224d-7326-96d8-64da3ea555a3', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6');


SET session_replication_role TO DEFAULT;


