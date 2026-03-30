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
  ('019d3dab-8997-7230-b989-be5bfd03456e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8997-7974-bdb2-960a100e027f', '019d3dab-8a67-7613-83ec-c1f30d39e5ed', '019d3dab-8eb6-7293-acf4-e4c2454189ab', '019d3dab-92cb-74df-a943-815b5f9a950b', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


