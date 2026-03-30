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
  ('019d3dab-a3b5-7367-9c43-92c675e51cf1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', '019d3dab-9ea3-7c9d-966a-ab7fe635c56f', '019d3dab-a3bb-799e-a446-c7ea91ef9aeb', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'phone_numbers');


SET session_replication_role TO DEFAULT;


