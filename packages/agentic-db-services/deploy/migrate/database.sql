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
  ('019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b476-7618-a41d-1f9591d4b3af', 'agentic-db-1774756410409', '6db2cc10-5778-5dbb-9cd2-cf439a93a1c0');


SET session_replication_role TO DEFAULT;


