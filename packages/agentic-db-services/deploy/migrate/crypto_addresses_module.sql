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
  ('019d1dc0-94ea-7a02-b2df-9fd03705fc1e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', '019d1dc0-8842-76be-9040-db1ef7c49140', '019d1dc0-9866-743b-a5ad-e8b2cc251c85', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


