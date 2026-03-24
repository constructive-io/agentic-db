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
  ('019d1dbf-da0f-742b-bbfd-50c76f1a7282', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'public', true, 'authenticated', 'anonymous'),
  ('019d1dbf-da10-7327-9f94-5bd9fec62b8f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'admin', true, 'authenticated', 'anonymous'),
  ('019d1dbf-da10-7aec-976f-d381394c44c4', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'private', false, 'administrator', 'administrator'),
  ('019d1dbf-da10-7dcc-a85e-789869fd3615', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'auth', true, 'authenticated', 'anonymous'),
  ('019d1dbf-da11-754e-acc8-6f81717e01a5', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


