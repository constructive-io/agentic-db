-- Deploy: migrate/encrypted_secrets_module
-- made with <3 @ constructive.io

-- requires: migrate/profiles_module


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

INSERT INTO metaschema_modules_public.encrypted_secrets_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d1736-e12a-7394-a774-a4fdddc94e56', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e12a-7894-aa33-3ba3c677fd10', '019d1736-e1e6-770d-b5cc-b35f9bc34e6c', 'encrypted_secrets');


SET session_replication_role TO DEFAULT;


