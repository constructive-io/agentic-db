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
  ('73977af2-89d9-0e71-6ef9-af9eb05df739', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'public', true, 'authenticated', 'anonymous'),
  ('29b90a6a-89d2-0b63-d7ec-64d2b6798fb8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'admin', true, 'authenticated', 'anonymous'),
  ('732d0b12-25d0-8213-5958-22b72c58c0ca', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'private', false, 'administrator', 'administrator'),
  ('7332bcac-1e4e-e6ba-5ab4-97bc68a8a01c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'auth', true, 'authenticated', 'anonymous'),
  ('a48f5252-fd73-312b-c516-a630e9473e3c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


