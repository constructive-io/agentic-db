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
  ('019d13bc-bcfa-747b-8eb8-d6250e9c9b3c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b32e-795b-88ad-05e3d9e027f2', '019d13bc-b3f5-7927-836b-995e505c2d9a', '019d13bc-bd07-7448-b92f-fac43de1c576', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


