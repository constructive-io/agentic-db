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
  ('c559dd3d-4934-42fa-878b-c328ea9803f5', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', 'bfc11eab-3ff8-4448-6b3e-3b7222e1da66', 'bfc18ad4-55d3-4abb-5c4f-28528278d477', 'app_limits', 'bfc14f8c-0cd2-46d2-d70f-31a9f0bb489b', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353'),
  ('0abfba83-1b0e-4992-be76-50a04caa7fa4', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', 'bfc11eab-3ff8-4448-6b3e-3b7222e1da66', 'bfc1e969-4ee9-4253-ebb5-70225b1de64a', 'org_limits', 'bfc18f5f-a7c8-4641-85ba-765e2ff2928a', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353');


SET session_replication_role TO DEFAULT;


