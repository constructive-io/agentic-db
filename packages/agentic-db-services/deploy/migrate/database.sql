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
  ('019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-01e5-704d-bbc6-0e710e7c73a1', 'agentic-db-1774254489346', '5b879201-275a-5542-9aa4-10a6ed7cba6d');


SET session_replication_role TO DEFAULT;


