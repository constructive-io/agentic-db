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
  ('019d416f-f11b-7e47-bde1-ddd7eb919f7e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e579-75db-83d9-e2a13677ef1d', '019d416f-e66a-702e-8e0b-94a0d835daec', '019d416f-f1c3-72e2-8872-af6832fe4867', '019d416f-384a-79e2-9379-99ca3460e274', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


