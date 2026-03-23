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
  ('bd7a4d4c-670b-7275-fd1c-63b542f9090f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', '80bd8b60-df08-4f5a-d8aa-1e96eaa35431', '2702c4e2-ae13-03f8-90f5-09b3f4eb70a1', 'app_limits', '8c21c5c0-7e77-96dc-a3ec-8c1d100049c7', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f'),
  ('52b27840-6c9b-e548-2fb7-80dfdb1922b5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', '80bd8b60-df08-4f5a-d8aa-1e96eaa35431', '9988f49c-9161-942a-03bb-1609bff4a776', 'org_limits', '95e7de09-3b07-80ca-44a0-4893bd79f911', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f');


SET session_replication_role TO DEFAULT;


