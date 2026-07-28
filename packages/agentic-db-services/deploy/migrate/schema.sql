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
  label,
  description,
  smart_tags,
  category,
  tags,
  is_public,
  api_exposure
) VALUES
  ('019fa679-908a-7721-91ed-45c1fa1edc42', '019fa679-9064-7be8-b12a-f974608356ce', 'app_public', 'agentic_db_app_public', 'app_public', NULL, NULL, 'app', '{}', true, 'exposable'),
  ('019fa679-908c-7eda-9454-5d1cbb3cc55d', '019fa679-9064-7be8-b12a-f974608356ce', 'app_private', 'agentic_db_app_private', 'app_private', NULL, NULL, 'app', '{}', false, 'never_expose');


SET session_replication_role TO DEFAULT;


