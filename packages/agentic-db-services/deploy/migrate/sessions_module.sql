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
  ('e0c2491c-f2fc-aacf-856b-ad05204e0a33', 'fdf8a620-6969-72d5-d89a-ed384259d249', '43d51e76-c81d-cf4c-73dc-9a819c9ef1fb', 'db4368cc-fd7c-06ee-e888-6f913a7edaed', 'e414cb8d-5cda-5706-13c0-dc993e205d21', 'd6ba9714-d25b-b7c2-7550-97facdb6fb93', 'a42ab990-9bfb-d930-3f98-a01493cc2158', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


