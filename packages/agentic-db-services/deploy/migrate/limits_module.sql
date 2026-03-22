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
  ('45051daf-7621-110a-ec97-0e433bb72665', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '4876ab00-d88b-6ee9-d562-200acedcd846', '13844e26-cc87-71d8-47db-93774a9d9be0', '35e1d8a2-bafd-16d9-9554-d375a9819e78', 'app_limits', '2cf73d4c-8c9a-5862-beec-ea74bff434ce', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '5d9c849b-e962-041a-de77-54774d5d1e62'),
  ('944c07ef-0057-5d4b-47ce-285ca295abb0', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '4876ab00-d88b-6ee9-d562-200acedcd846', '13844e26-cc87-71d8-47db-93774a9d9be0', 'f7b24ee5-f752-90db-4fee-03f74cd02e79', 'org_limits', 'e2cae45d-62ab-60da-4ae0-66763c1698a8', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '5d9c849b-e962-041a-de77-54774d5d1e62', '5d9c849b-e962-041a-de77-54774d5d1e62');


SET session_replication_role TO DEFAULT;


