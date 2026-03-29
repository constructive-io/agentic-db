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
  ('f3f73b08-1322-c338-94bf-2e9a9812457b', '14b01c2d-072a-5594-645a-675751a83d86', 'ad44e072-783e-1315-4950-4c52779e8bd0', '73486766-2491-e7d3-2837-0af7a0aa0dc1', '162f732d-d7df-85a6-5ae7-155c8d525f0a', '5258dec3-0cde-6103-1859-08598c428740', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


