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
  ('019d1dc0-8283-7e7e-b6bf-d703df5dd5e0', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8284-724f-89c7-49478a97f812', '019d1dc0-834e-710b-959a-10739141feb0', 'encrypted_secrets');


SET session_replication_role TO DEFAULT;


