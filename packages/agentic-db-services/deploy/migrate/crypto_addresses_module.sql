-- Deploy: migrate/crypto_addresses_module
-- made with <3 @ constructive.io

-- requires: migrate/phone_numbers_module


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

INSERT INTO metaschema_modules_public.crypto_addresses_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name,
  crypto_network
) VALUES
  ('019d130d-b433-748a-9e9e-20dd371b4a23', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', '019d130d-a908-7ac6-b490-603417d4ece9', '019d130d-b4c0-7b5b-b43f-68ae99ec218e', '019d130c-f14b-7ef8-94e3-e005503a699d', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


