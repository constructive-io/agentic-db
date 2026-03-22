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
  ('019d1736-ef4e-714c-acc2-f5af09dcf6cd', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e5ca-7a34-b722-ca6747e9fecf', '019d1736-e68e-7fbd-96f6-2db90ef5b971', '019d1736-ef55-7a65-9af5-bd102f6bd601', '019d1736-5b0d-7766-9f99-3cf518199163', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


