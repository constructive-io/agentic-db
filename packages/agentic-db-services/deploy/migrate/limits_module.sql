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
  ('90d5995f-90cf-eb86-ebd6-212cbadcae1f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'b63596fb-0d8d-403d-c55b-23ccdf3cbf2b', 'bed29a3a-7fba-8ec6-a8b8-db10680ab3b7', 'org_limits', 'bf48f7e8-09a9-82c0-de50-d668ef79dabc', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '5b5d99e1-9167-1378-cf99-58449ebc35bc', '5b5d99e1-9167-1378-cf99-58449ebc35bc'),
  ('e7d146cd-98e5-dfae-df9d-37acee7d87fa', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'b63596fb-0d8d-403d-c55b-23ccdf3cbf2b', '5dbb2c55-c468-712c-9741-d541cd432344', 'app_limits', '2b181c90-63c4-fd4c-561e-008440d468fb', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '5b5d99e1-9167-1378-cf99-58449ebc35bc');


SET session_replication_role TO DEFAULT;


