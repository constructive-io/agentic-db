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
  ('019fa679-9064-7be8-b12a-f974608356ce', '019fa679-9030-7788-8e14-ad17b374953d', 'agentic_db_1785204411353', 'agentic-db-1785204411353', 'agentic-db-1785204411353', 'bc2eef59-4241-52fd-97ba-de46d92178fd', false);


SET session_replication_role TO DEFAULT;


