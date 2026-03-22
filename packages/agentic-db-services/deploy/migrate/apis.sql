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
  ('019d1795-48c6-754b-a19b-b68b1472e265', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'public', true, 'authenticated', 'anonymous'),
  ('019d1795-48c8-7509-865c-9833ee25ab44', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'admin', true, 'authenticated', 'anonymous'),
  ('019d1795-48c8-7cb1-8cb1-19f4d5d8b61e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'private', false, 'administrator', 'administrator'),
  ('019d1795-48c8-7f8c-b3bf-38f46c572738', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'auth', true, 'authenticated', 'anonymous'),
  ('019d1795-48c9-761b-877c-2357966aff34', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


