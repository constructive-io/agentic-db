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
  ('019d130d-aecc-7d9b-b294-d79a6f8426d9', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', '019d130d-a908-7ac6-b490-603417d4ece9', '019d130d-af57-73cd-b532-4a250e4364a2', '019d130c-f14b-7ef8-94e3-e005503a699d', 'phone_numbers');


SET session_replication_role TO DEFAULT;


