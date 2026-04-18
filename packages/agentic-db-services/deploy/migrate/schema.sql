-- Deploy: migrate/schema
-- made with <3 @ constructive.io

-- requires: migrate/database


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

INSERT INTO metaschema_public.schema (
  id,
  database_id,
  name,
  schema_name,
  description,
  is_public
) VALUES
  ('100c2ddc-49fa-f18f-8c3d-fb711fa32682', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'private', 'agentic_db_private', NULL, false),
  ('87a21bb8-3407-6a13-ce48-d1b40b14c387', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'public', 'agentic_db_public', NULL, true),
  ('bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'app_public', 'agentic_db_app_public', NULL, true);


SET session_replication_role TO DEFAULT;


