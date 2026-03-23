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
  ('019d19cf-b1a2-76c7-9db3-f1935fb45ab2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b1a2-7b27-8e25-23bafd3b2a95', '019d19cf-b277-73ea-ab84-10c15363d39d', 'encrypted_secrets');


SET session_replication_role TO DEFAULT;


