-- Deploy: migrate/emails_module
-- made with <3 @ constructive.io

-- requires: migrate/invites_module


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

INSERT INTO metaschema_modules_public.emails_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name
) VALUES
  ('5549e742-f6d8-17b1-895f-ec4ed0d1fe5d', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e3508c8b-866b-4a91-6d3c-645e026ce92b', '34746a8f-5255-defc-7ade-ade252c2a847', '81da28fe-893c-f637-b814-7f4c746adb93', '5d9c849b-e962-041a-de77-54774d5d1e62', 'emails');


SET session_replication_role TO DEFAULT;


