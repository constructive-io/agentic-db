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
  ('019d13bc-29eb-71b4-9e5d-48f6537a1896', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-29eb-77ca-9217-6d537277d807', '019d13bc-2a6b-7b46-aaa5-8e38d4843dd7', '019d13bc-2af4-7c29-a10f-1f5f940886a5', 'app_limits', '019d13bc-2c3b-7a1f-8bda-fd379798b117', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d13bc-21ae-7eb2-b63f-9fb476e22f09'),
  ('019d13bc-5ad7-7dbe-8fec-d5ce75d11d55', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-29eb-77ca-9217-6d537277d807', '019d13bc-2a6b-7b46-aaa5-8e38d4843dd7', '019d13bc-5ae9-796e-af07-f23910fa7dc1', 'org_limits', '019d13bc-5c9e-745a-8138-21412a3277e0', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-21ae-7eb2-b63f-9fb476e22f09');


SET session_replication_role TO DEFAULT;


