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
  ('11877126-3085-4f1b-a31d-30e38fc5e6a6', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d761-1ce6-4c24-a4fa-d50d50e2cea8', '9bc1a6e9-904e-4179-f9fc-23985a15c486', '9bc1b812-e514-4478-c3e7-e4d9fd10726b', '9bc10b01-7764-4317-15e2-a937a5f634bc', '9bc12972-1a70-4812-beb6-f24029a19ea6', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


