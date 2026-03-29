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
  ('019d37ba-5004-7768-9254-4b2431acd881', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-5004-7d17-8fdb-2c698ed2d176', '019d37ba-50ce-7e82-8463-9a0663f36d12', 'encrypted_secrets');


SET session_replication_role TO DEFAULT;


