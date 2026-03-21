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
  ('019d11da-0340-7bf6-84dc-92f7ff0fa495', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0341-73a5-bbdf-63c4da9099ca', '019d11da-0417-742d-8cb7-e8434091144f', '019d11da-0502-76d2-bd69-ff87518e3d9f', '019d11d9-5aed-7673-b41b-b11528f73f79', 'emails');


SET session_replication_role TO DEFAULT;


