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
  ('019d130c-fbea-7f9e-850a-5eb46f7b35a9', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', '019d130c-fc93-7634-b76e-fd58a64ae608', '019d130c-fd65-7cff-b713-e3e23c1e4724', 'app_limits', '019d130c-ff13-76cf-892f-0b551c8f7c99', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d130c-f14b-7ef8-94e3-e005503a699d'),
  ('019d130d-3b21-7968-b0c1-8c6d02f90ce6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fbeb-7677-ae56-0be99522dd89', '019d130c-fc93-7634-b76e-fd58a64ae608', '019d130d-3b92-7067-a6c2-9c5afc059e63', 'org_limits', '019d130d-3da3-72f3-80af-59cec1ba7467', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f14b-7ef8-94e3-e005503a699d');


SET session_replication_role TO DEFAULT;


