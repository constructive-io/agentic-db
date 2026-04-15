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
  ('019d934f-972d-7bac-b96c-91baba6c7da9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-972e-7422-8b8c-2f12fe866d0f', '019d934f-980b-72b0-a3e0-4e3c2a56ca1e', '019d934f-9900-71af-ab32-19d9c1b4f56e', 'app_limits', '019d934f-9af1-72b8-b389-574c6930cbd9', 'app_limit_defaults', 'app_limits_inc', 'app_limits_dec', 'app_limits_inc_tg', 'app_limits_dec_tg', 'app_limits_upd_tg', 'app_limits_check', 'app', 1, NULL, '019d934f-898e-73d5-9f57-6c8589048db5'),
  ('019d934f-e491-7db0-811e-2b57703967e5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-972e-7422-8b8c-2f12fe866d0f', '019d934f-980b-72b0-a3e0-4e3c2a56ca1e', '019d934f-e4e7-7046-9fd8-4184b022c61a', 'org_limits', '019d934f-e787-7a23-b4fa-d5be14121d10', 'org_limit_defaults', 'org_limits_inc', 'org_limits_dec', 'org_limits_inc_tg', 'org_limits_dec_tg', 'org_limits_upd_tg', 'org_limits_check', 'org', 2, '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-898e-73d5-9f57-6c8589048db5');


SET session_replication_role TO DEFAULT;


