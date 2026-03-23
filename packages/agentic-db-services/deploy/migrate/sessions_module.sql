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
  ('748e7269-9f08-c9ad-5fda-2af02f2ea279', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1464c5a1-1149-ffdc-99c9-e0a4a2e561f2', 'cc6c54e9-9854-b2ff-cac4-f972a4b83010', '772b1544-4191-c9b3-bedb-8d1e23786615', 'f89a11d6-3b96-6782-3a03-18cd6cc1b11d', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


