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
  ('019d20ce-202c-7693-8fe5-0dcf0d1aa26a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-19b6-7f06-8b7a-6fb6ff1d8cf1', '019d20ce-1aa3-7f70-8343-8ef4750e37a1', '019d20ce-2034-797b-98bf-a95553d98dca', '019d20cd-7a20-7176-823e-cca436cf06f3', 'phone_numbers');


SET session_replication_role TO DEFAULT;


