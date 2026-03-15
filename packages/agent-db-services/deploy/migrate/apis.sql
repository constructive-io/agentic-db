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
  ('48e35c24-3f44-479e-87ee-70bf57c7e3f2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'public', true, 'authenticated', 'anonymous'),
  ('bd9f2c10-c3a8-416f-8e40-2c7e55c3402d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'admin', true, 'authenticated', 'anonymous'),
  ('34e804ab-4d43-41ed-b5e9-27616885169e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'private', false, 'administrator', 'administrator'),
  ('d3334c11-97f8-4553-ab31-00854a259dd1', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'auth', true, 'authenticated', 'anonymous'),
  ('ca5fd55a-d91b-4152-99ad-beedf645560f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


