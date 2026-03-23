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
  ('019d19cf-bd73-73d3-91f4-87e6b9cca107', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b6ff-7624-ae4f-10e3952b1e72', '019d19cf-b7de-7e83-8ff2-4bbc282a7c89', '019d19cf-c13e-7181-b452-24902b58bb75', '019d19cf-04f9-762a-946a-add4e6430409', 'phone_numbers');


SET session_replication_role TO DEFAULT;


