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
  ('f47bf107-b180-4b6a-b3eb-b754890fa202', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1edd0-98c3-47df-acaa-c04878b922b4', 'bfc134f1-e2c5-4f75-d523-1ecc60ab663e', 'bfc1aafe-89d4-40f3-a2dc-598b6f4bef42', 'bfc14966-a5d4-4a88-29bc-3e9b57a8e10d', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', '30 days', 'sessions', 'session_credentials', 'app_auth_settings');


SET session_replication_role TO DEFAULT;


