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
  ('019d37ba-5ac2-7eb4-afd1-016a44572ea9', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', '019d37ba-55bf-736a-a2e9-f0533fa6526e', '019d37ba-5c91-75f3-a491-d61613e2d8ad', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'phone_numbers');


SET session_replication_role TO DEFAULT;


