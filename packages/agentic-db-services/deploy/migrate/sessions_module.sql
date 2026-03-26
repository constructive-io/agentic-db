-- Deploy: migrate/sessions_module
-- made with <3 @ constructive.io

-- requires: migrate/emails_module


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

INSERT INTO metaschema_modules_public.sessions_module (
  id,
  database_id,
  schema_id,
  sessions_table_id,
  session_credentials_table_id,
  auth_settings_table_id,
  users_table_id,
  sessions_default_expiration,
  sessions_table,
  session_credentials_table,
  auth_settings_table
) VALUES
  ('019d2831-ff21-7104-9a28-d541541d6eaf', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-ff21-7762-b954-2246c850f297', '019d2831-ffe5-771a-b2a3-5907257c8881', '019d2832-0442-7220-ae82-c26c548b7273', '019d2832-0849-77d2-9ebb-2700e9614134', '019d2831-6349-7cde-a517-c115bf8f4bff', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


