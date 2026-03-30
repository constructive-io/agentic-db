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
  ('019d4100-4bfd-760c-8dbb-ebd8e69c191d', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-4bfd-7cba-9df3-7205fb4bee7c', '019d4100-4c8b-7ef6-b5ba-efe1e5fe80d8', '019d4100-4d22-7cf1-bf13-b6ff64bc12e2', 'app_limits', '019d4100-4e9a-7370-806b-4946aafbfb6a', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d4100-42f6-7ae2-9811-58ffe46470b0'),
  ('019d4100-8630-7d95-8517-038928892377', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-4bfd-7cba-9df3-7205fb4bee7c', '019d4100-4c8b-7ef6-b5ba-efe1e5fe80d8', '019d4100-891a-7eae-bf72-bd095878b224', 'org_limits', '019d4100-8ad4-7a09-baf5-f9a0398277d9', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-42f6-7ae2-9811-58ffe46470b0');


SET session_replication_role TO DEFAULT;


