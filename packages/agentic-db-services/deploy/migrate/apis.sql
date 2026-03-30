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
  ('019d3dab-001d-757e-9b9d-48c6a3955e2d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'public', true, 'authenticated', 'anonymous'),
  ('019d3dab-001e-7cc8-bc88-8097db9825f7', '019d3daa-fe1f-718c-ac17-5692dc771810', 'admin', true, 'authenticated', 'anonymous'),
  ('019d3dab-001f-7466-8073-6937cff1218f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'private', false, 'administrator', 'administrator'),
  ('019d3dab-001f-7799-bc3b-477331d9ae95', '019d3daa-fe1f-718c-ac17-5692dc771810', 'auth', true, 'authenticated', 'anonymous'),
  ('019d3dab-001f-7f21-80b0-136b869971e2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


