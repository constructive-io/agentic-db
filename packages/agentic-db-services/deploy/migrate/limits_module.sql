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
  ('019d416f-4389-7d56-bfcc-02f3d7820987', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-438a-74a9-a9d4-eb3a7dda509e', '019d416f-442d-7172-aa7a-d298566bf339', '019d416f-44d3-7d9d-bc19-8b6ac7af639c', 'app_limits', '019d416f-465e-7fe5-b5fc-23227f7f959d', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d416f-384a-79e2-9379-99ca3460e274'),
  ('019d416f-7e50-7465-b637-14c307594256', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-438a-74a9-a9d4-eb3a7dda509e', '019d416f-442d-7172-aa7a-d298566bf339', '019d416f-7ecb-779b-a9e9-17bd6c03d7e6', 'org_limits', '019d416f-80c8-7bc2-805c-5ed0180f4142', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-384a-79e2-9379-99ca3460e274');


SET session_replication_role TO DEFAULT;


