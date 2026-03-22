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
  ('019d1795-ebde-71ca-9968-8776a0671195', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e0d3-7bc6-9ab7-a72ca3763767', '019d1795-e1ad-7e6c-ae53-69470f710b04', '019d1795-ec7e-7a44-ae1e-73ab12059139', '019d1795-494e-7deb-bd76-39af3a5fa635', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


