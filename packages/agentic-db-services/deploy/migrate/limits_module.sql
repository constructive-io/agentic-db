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
  ('019d37b9-c0e6-756a-b363-16092d2e448f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', '019d37b9-c16f-734c-8c5c-072d5621dc06', '019d37b9-c1ff-7b2f-b603-ca6071c814b0', 'app_limits', '019d37b9-c37f-7171-9431-2555b4a606d3', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4'),
  ('019d37b9-f4d4-7da3-8f31-9869d475661e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', '019d37b9-c16f-734c-8c5c-072d5621dc06', '019d37b9-f6d5-7855-bd31-fca69824d86e', 'org_limits', '019d37b9-f893-7ecd-9504-23198b5ec0d2', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4');


SET session_replication_role TO DEFAULT;


