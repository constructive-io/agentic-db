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
  ('16dadbdb-d7c7-6c00-5919-acec849d1544', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'app', true, 'authenticated', 'anonymous'),
  ('8f7308b0-c788-f566-4959-59c563e849da', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'private', false, 'administrator', 'administrator'),
  ('9b816881-10d3-41c9-86dd-78473d4334eb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'admin', true, 'authenticated', 'anonymous'),
  ('a8adeec8-5fcf-21d3-dd4f-6b48eaa0fc1e', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'auth', true, 'authenticated', 'anonymous'),
  ('e005449b-7ef7-37df-9c51-2cfec020fa43', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'public', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


