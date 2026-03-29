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
  ('019d37ba-60ca-7075-b8cc-1fbce63c68c0', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', '019d37ba-55bf-736a-a2e9-f0533fa6526e', '019d37ba-62ae-7753-be7a-7aa895f9a276', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


