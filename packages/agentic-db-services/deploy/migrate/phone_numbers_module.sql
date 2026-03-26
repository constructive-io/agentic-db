-- Deploy: migrate/phone_numbers_module
-- made with <3 @ constructive.io

-- requires: migrate/encrypted_secrets_module


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

INSERT INTO metaschema_modules_public.phone_numbers_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name
) VALUES
  ('019d2832-199e-7ee7-9468-14efe8e3df5d', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-1382-7e2d-a593-789721ef4d4c', '019d2832-1456-702c-8ded-db3f420fc155', '019d2832-1d4b-7f57-9785-c7839a0aa4cb', '019d2831-6349-7cde-a517-c115bf8f4bff', 'phone_numbers');


SET session_replication_role TO DEFAULT;


