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
  ('019d1795-5133-7f6d-8d9f-5330cc8df722', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-5134-772b-9356-915358d7fbd1', '019d1795-51ab-773d-92fa-c6958bcfe3fd', '019d1795-522a-70ad-ab17-3ca7b41a79fd', 'app_limits', '019d1795-5370-7516-96ed-fec4f2935e0c', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d1795-494e-7deb-bd76-39af3a5fa635'),
  ('019d1795-81d0-776b-bd0d-13e8ba2d9a92', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-5134-772b-9356-915358d7fbd1', '019d1795-51ab-773d-92fa-c6958bcfe3fd', '019d1795-8243-74ac-af82-138875d2f98d', 'org_limits', '019d1795-8423-7cc8-93af-fb7fa796284d', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-494e-7deb-bd76-39af3a5fa635');


SET session_replication_role TO DEFAULT;


