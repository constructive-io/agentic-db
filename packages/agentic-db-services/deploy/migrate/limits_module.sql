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
  ('019d42ff-d47e-79f4-8a48-109cc5322192', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', '019d42ff-d520-722e-be7e-555a55616902', '019d42ff-d5c3-7886-86af-32f382d56e2b', 'app_limits', '019d42ff-d74f-7d29-ab44-cc171a5fd94f', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d42ff-ca62-77a0-ab97-b8d784c420dc'),
  ('019d4300-0bb9-7d26-8593-5f70a025526d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', '019d42ff-d520-722e-be7e-555a55616902', '019d4300-0bcd-71fd-a743-0916ed3e2eba', 'org_limits', '019d4300-0dc2-7269-8a7a-f9193067ff9a', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-ca62-77a0-ab97-b8d784c420dc');


SET session_replication_role TO DEFAULT;


