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
  ('019d20ce-24d3-7ffc-94bc-23adab73d943', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-19b6-7f06-8b7a-6fb6ff1d8cf1', '019d20ce-1aa3-7f70-8343-8ef4750e37a1', '019d20ce-24e2-786b-9b02-a5534552e2ba', '019d20cd-7a20-7176-823e-cca436cf06f3', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


