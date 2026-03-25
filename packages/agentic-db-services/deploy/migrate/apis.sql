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
  ('019d21f8-22a3-7f6c-8835-6d4f9bf3bd07', '019d21f8-208e-7d66-9eaa-e762489889c1', 'public', true, 'authenticated', 'anonymous'),
  ('019d21f8-22a5-79fd-97f2-6353b66f4b5d', '019d21f8-208e-7d66-9eaa-e762489889c1', 'admin', true, 'authenticated', 'anonymous'),
  ('019d21f8-22a6-70f3-95c4-f381abfc1243', '019d21f8-208e-7d66-9eaa-e762489889c1', 'private', false, 'administrator', 'administrator'),
  ('019d21f8-22a6-73df-9bc9-c92da843e52a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'auth', true, 'authenticated', 'anonymous'),
  ('019d21f8-22a6-7af4-81e5-d7bff892155f', '019d21f8-208e-7d66-9eaa-e762489889c1', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


