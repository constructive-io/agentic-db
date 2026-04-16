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
  ('019d9485-ae98-7486-bdee-7e5665e75d4e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'public', 'agentic_db_public', NULL, true),
  ('019d9485-ae99-7c98-95a8-72262cca2013', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'private', 'agentic_db_private', NULL, false),
  ('aab79318-871f-4662-f1ad-a54577207291', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'app_public', 'agentic_db_app_public', NULL, true);


SET session_replication_role TO DEFAULT;


