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
  ('ef4be3e2-fe94-9513-6a26-bafb2497fcfc', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'e0ca3db8-86c1-6d4a-9868-f63771343a59', '90ed056e-9428-2c82-9591-1c178eec5dc4', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


