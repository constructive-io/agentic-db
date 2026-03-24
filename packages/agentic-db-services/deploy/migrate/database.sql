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
  ('019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d7c8-7feb-8aa2-624374e5166b', 'agentic-db-1774320604378', '935c5145-aa2e-5289-a4ea-e83122cbed9f');


SET session_replication_role TO DEFAULT;


