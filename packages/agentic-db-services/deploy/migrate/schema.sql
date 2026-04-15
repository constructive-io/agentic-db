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
  ('019d937b-b682-77d7-8778-efebf99aa040', '019d937b-b671-77da-9a1e-5b9b26705894', 'public', 'agentic_db_public', NULL, true),
  ('019d937b-b684-7879-9eab-a1e9699dccc5', '019d937b-b671-77da-9a1e-5b9b26705894', 'private', 'agentic_db_private', NULL, false),
  ('019d937b-d5e9-7399-ae6a-57e4f46df606', '019d937b-b671-77da-9a1e-5b9b26705894', 'app_public', 'agentic_db_app_public', NULL, true);


SET session_replication_role TO DEFAULT;


