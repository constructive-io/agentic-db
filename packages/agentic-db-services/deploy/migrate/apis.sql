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
  ('1c501ba9-5e71-96d1-8a8f-8332178351d2', '2ef50f93-192b-b168-969d-304c8e675e1d', 'auth', true, 'authenticated', 'anonymous'),
  ('2aa88e58-f65f-eb2f-34e4-88bc5a63a7c3', '2ef50f93-192b-b168-969d-304c8e675e1d', 'app', true, 'authenticated', 'anonymous'),
  ('618c89d8-fefa-b93b-141d-ae3e60e2b052', '2ef50f93-192b-b168-969d-304c8e675e1d', 'admin', true, 'authenticated', 'anonymous'),
  ('b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', '2ef50f93-192b-b168-969d-304c8e675e1d', 'private', false, 'administrator', 'administrator'),
  ('ccbc0a07-ae90-c183-db56-fd41f35affbe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'public', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


