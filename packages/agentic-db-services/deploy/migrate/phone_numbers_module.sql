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
  ('019d9350-72e9-7dc5-b65d-388aee22d137', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6aa4-7889-a98e-8295bc192844', '019d9350-6bd1-721a-ada9-5d48abfdaf4a', '019d9350-7348-7a60-95f5-1a537a4164ad', '019d934f-898e-73d5-9f57-6c8589048db5', 'phone_numbers');


SET session_replication_role TO DEFAULT;


