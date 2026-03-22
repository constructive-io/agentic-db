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
  ('30d64585-dc48-5160-c217-e3f36c6e045b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '63d36554-dc1f-cb6d-8af7-5d38aa8f3fcc', 'af63b0f7-468e-80da-17d5-937b1eddfff5', 'bb40e62d-b9fe-c9fa-01f6-0bf8fc749264', 'b07f5dde-b938-eeea-5980-4c0f77662f8b', '5d9c849b-e962-041a-de77-54774d5d1e62', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


