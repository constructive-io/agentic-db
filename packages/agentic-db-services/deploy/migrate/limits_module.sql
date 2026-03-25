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
  ('019d2727-79ae-7665-98e9-48c00451ee26', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-79ae-7cf1-aefd-d3da3c46df61', '019d2727-7a31-761e-b086-a70a660a2408', '019d2727-7ab6-7f54-b993-a6548e5bdf4e', 'app_limits', '019d2727-7c05-73c1-8c0d-089c630d732b', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d2727-7153-7bae-b8ec-6f398ecf0b75'),
  ('019d2727-af23-7c96-82cf-a7f61cf8c51f', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-79ae-7cf1-aefd-d3da3c46df61', '019d2727-7a31-761e-b086-a70a660a2408', '019d2727-b1c5-7e3a-8333-272fc2d6843b', 'org_limits', '019d2727-b36c-726a-ba60-154ce6591f54', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7153-7bae-b8ec-6f398ecf0b75');


SET session_replication_role TO DEFAULT;


