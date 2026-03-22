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
  ('bd96db24-f503-2fb8-25b9-79267df0825f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e3508c8b-866b-4a91-6d3c-645e026ce92b', '34746a8f-5255-defc-7ade-ade252c2a847', 'f65c900b-5027-c8ee-174e-6f9909b0d58d', '5d9c849b-e962-041a-de77-54774d5d1e62', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


