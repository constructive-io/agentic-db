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
  ('33d2b7e3-5fe8-4b7c-ae7b-359cf277a8b3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081108-0bf8-4a86-9a05-a0669b2c1d4b', 'a0080358-3ac8-45b4-c55e-233f9d068509', 'a008f2ff-e571-41fc-a4fe-30dd9a67734b', 'a008dc4f-0631-4038-03b4-2346c0b41530', 'a0082485-cf01-4c72-8c4f-76422cceded1', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


