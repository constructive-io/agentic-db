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
  ('019d1736-d324-7241-8a64-61a04a3b5970', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d324-7b0c-a6f3-8e7873a32522', '019d1736-d3dd-7a73-a3fb-b54b799818b1', '019d1736-d7dd-71a8-b40b-a0084036b3dc', '019d1736-db77-7045-a80e-3b50ed03c651', '019d1736-5b0d-7766-9f99-3cf518199163', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


