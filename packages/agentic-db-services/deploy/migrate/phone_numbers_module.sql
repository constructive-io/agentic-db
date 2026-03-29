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
  ('61bf56bf-dd3a-f8a1-6878-afc22a70d5d7', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'df370469-c3cb-32a2-054c-173a2f06e5b7', '2410451f-4c02-8ab0-ae16-f68c1a9809b0', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'phone_numbers');


SET session_replication_role TO DEFAULT;


