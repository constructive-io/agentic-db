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
  ('019d3dab-09ad-7ef2-9acf-7f1fa4f072aa', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', '019d3dab-0a3d-7b03-99ad-334c86b5d166', '019d3dab-0ad6-7e8e-bb4b-da72970fd048', 'app_limits', '019d3dab-0c3b-7cd6-b824-67e803578bd8', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d3dab-00a9-731d-b66d-d5d69c0909a6'),
  ('019d3dab-3dd2-732a-9c19-614a9d08bf2e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', '019d3dab-0a3d-7b03-99ad-334c86b5d166', '019d3dab-3de4-73ce-b0c3-be1982fd603c', 'org_limits', '019d3dab-3fdc-736b-b53a-ab97b1e4c7bb', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-00a9-731d-b66d-d5d69c0909a6');


SET session_replication_role TO DEFAULT;


