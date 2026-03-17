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
  ('604ce051-f408-42bd-a9d5-bbe3ce771b1f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', '9bc1e521-4779-4a20-1009-12da67955ff8', '9bc1595d-9775-4de4-6607-7dfbe10d4b6f', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'crypto_addresses', 'BTC');


SET session_replication_role TO DEFAULT;


