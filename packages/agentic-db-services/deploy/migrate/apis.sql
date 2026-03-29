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
  ('019d37b9-b70f-7ab3-b34d-0b1f07824ee2', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'public', true, 'authenticated', 'anonymous'),
  ('019d37b9-b711-7e8b-b85a-87de3b617e45', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'admin', true, 'authenticated', 'anonymous'),
  ('019d37b9-b712-7800-ab30-963d5e8b9e0c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'private', false, 'administrator', 'administrator'),
  ('019d37b9-b712-7afd-846a-e9a30739821a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'auth', true, 'authenticated', 'anonymous'),
  ('019d37b9-b713-7142-b8cd-f16eb92e797f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


