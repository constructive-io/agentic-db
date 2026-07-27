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
  schema_hash,
  name,
  label,
  hash,
  platform
) VALUES
  ('65a856dc-b301-12f0-d108-9c49d8b99bf0', '019fa4d0-5290-7f74-8009-7c2ae875b510', 'agentic_db_1785176543859', 'agentic-db-1785176543859', 'agentic-db-1785176543859', 'f621015f-b065-5d10-aa78-acceeeac2223', false);


SET session_replication_role TO DEFAULT;


