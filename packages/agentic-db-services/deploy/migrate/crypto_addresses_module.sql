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
  ('87c4333b-b2a5-6956-3b60-035f443ccb24', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'c059c259-67d4-6198-4cdf-badacdd556e5', '4ce16892-87d4-bb44-d743-6d182552e2c0', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


