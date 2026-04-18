-- Deploy: migrate/database
-- made with <3 @ constructive.io




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

INSERT INTO metaschema_public.database (
  id,
  owner_id,
  name,
  hash
) VALUES
  ('b46c93b1-cb18-9e9f-3288-850e3049f021', '019d9f72-5a93-7c00-b1bb-ea788552df14', 'agentic-db-1776496564846', 'a98b0a33-fba0-5875-af05-2a5456069b41');


SET session_replication_role TO DEFAULT;


