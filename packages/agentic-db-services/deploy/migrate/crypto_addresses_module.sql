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
  ('019d2728-2336-7402-840b-964b742fcfe0', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-1547-7fd8-9754-8b07b30fbec5', '019d2728-1621-717e-8122-efc23849441c', '019d2728-26da-71e7-8d72-0d02ca072d71', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


