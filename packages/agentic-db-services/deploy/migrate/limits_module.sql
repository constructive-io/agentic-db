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
  ('019d2831-6c59-7e8f-883f-83e7e7384178', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6c5a-7621-8f3b-bfd18a2a008a', '019d2831-6ce0-7fe0-a125-bfce08a40dfe', '019d2831-6d76-795f-95ab-9f8ec87cc298', 'app_limits', '019d2831-6ed0-7bb5-b587-614b82b3714c', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d2831-6349-7cde-a517-c115bf8f4bff'),
  ('019d2831-a70a-7113-9b41-a908c55f0279', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6c5a-7621-8f3b-bfd18a2a008a', '019d2831-6ce0-7fe0-a125-bfce08a40dfe', '019d2831-aa98-7f38-8ae6-a0ad172ec4ef', 'org_limits', '019d2831-ac5d-7ada-bd29-6edd91fad4ef', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6349-7cde-a517-c115bf8f4bff');


SET session_replication_role TO DEFAULT;


