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
  ('cb1b477d-1947-4d2e-a6f9-c6bab48baec9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'public', true, 'authenticated', 'anonymous'),
  ('4b3adbc4-62b2-49c5-b315-0f186dad3282', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'admin', true, 'authenticated', 'anonymous'),
  ('384cd3a3-3268-4289-bc35-3c3535238883', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'private', false, 'administrator', 'administrator'),
  ('9e1460cd-8403-41bd-8335-8f4f0e170d8e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'auth', true, 'authenticated', 'anonymous'),
  ('609e6dda-a463-4150-88e9-edd33a661307', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


