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
  ('6a3fbedf-8e2e-95ec-a53e-dc4f7b3eda5c', '14b01c2d-072a-5594-645a-675751a83d86', '89288808-b68c-6635-f0ae-55f5a1d29c85', 'a66e98e4-80f3-7b5c-eb7c-21bd622e7457', '25b0f46b-8c26-3687-df41-a3aecb508f8a', 'f4ff570f-af35-41c9-b89a-b0ce5af99ce4', '5258dec3-0cde-6103-1859-08598c428740', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


