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
  ('019d416f-cfad-780d-b33a-c49fb064bc1d', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cfad-7e4b-b9af-9bb5209c5f61', '019d416f-d087-7421-8a37-5d5b259a5873', '019d416f-d53c-7113-84bd-f5b7712f8a62', '019d416f-d978-74d5-b0fd-d4e352d90114', '019d416f-384a-79e2-9379-99ca3460e274', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


