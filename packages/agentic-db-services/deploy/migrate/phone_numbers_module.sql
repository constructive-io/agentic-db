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
  ('b61e7296-1c75-b688-2dc3-a54687d416f9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e3508c8b-866b-4a91-6d3c-645e026ce92b', '34746a8f-5255-defc-7ade-ade252c2a847', '82989a45-5dad-effa-ed9d-32c430b3f2d6', '5d9c849b-e962-041a-de77-54774d5d1e62', 'phone_numbers');


SET session_replication_role TO DEFAULT;


