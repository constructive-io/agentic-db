-- Deploy: migrate/phone_numbers_module
-- made with <3 @ constructive.io

-- requires: migrate/encrypted_secrets_module


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

INSERT INTO metaschema_modules_public.phone_numbers_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name
) VALUES
  ('aaded7cd-e3fb-4adf-38c7-93477f6a2489', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'c059c259-67d4-6198-4cdf-badacdd556e5', 'bfa1fce2-6e58-1fb5-5e1a-2959791ae5ef', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'phone_numbers');


SET session_replication_role TO DEFAULT;


