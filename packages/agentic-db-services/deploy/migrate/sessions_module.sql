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
  ('019d1dc0-7355-799d-bb41-1c6e00a85e68', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7355-7fc9-9605-627035d2a03b', '019d1dc0-741e-7623-a1f9-40a78955be5e', '019d1dc0-784a-7acc-93fe-593a9264be37', '019d1dc0-7c4c-73c7-9189-5ba48bc4cd71', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


