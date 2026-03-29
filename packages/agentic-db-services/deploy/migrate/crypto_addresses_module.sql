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
  ('94cdd6d8-704d-cdd8-9315-46a2a4c43993', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', '6fac8c0d-a376-0520-b5a9-4002080cbea9', 'faaf37b8-95ed-1f8e-90f9-2bfa6e22dd4a', '5353e947-3e3f-3914-7fd1-1370926dd743', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


