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
  ('019d0ffe-f6b2-77ae-a213-38a21cf2fc7b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', '019d0ffe-ed54-7fef-933f-dacbeb5ee307', '019d0ffe-f705-7b25-908c-2ccabc54d3fc', '019d0ffe-509c-7e69-b073-260da2d7f651', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


