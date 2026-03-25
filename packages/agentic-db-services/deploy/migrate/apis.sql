-- Deploy: migrate/apis
-- made with <3 @ constructive.io

-- requires: migrate/sites


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

INSERT INTO services_public.apis (
  id,
  database_id,
  name,
  is_public,
  role_name,
  anon_role
) VALUES
  ('019d2727-70c7-7587-975c-56e8959922fc', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'public', true, 'authenticated', 'anonymous'),
  ('019d2727-70c8-74ee-81f9-16bac0da7a2e', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'admin', true, 'authenticated', 'anonymous'),
  ('019d2727-70c8-7c03-8a53-fabc6362b017', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'private', false, 'administrator', 'administrator'),
  ('019d2727-70c8-7f2e-b52f-a5a714229794', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'auth', true, 'authenticated', 'anonymous'),
  ('019d2727-70c9-7697-8c29-c426e73709c9', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


