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
  ('019d3d15-7ce4-7de0-a604-4b71869d7226', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7336-7a3d-886a-97420e3e69cb', '019d3d15-73f7-7913-908f-626b5096c71c', '019d3d15-7cec-785b-9134-ef3617094688', '019d3d14-e756-7f18-bcd9-be9300e74947', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


