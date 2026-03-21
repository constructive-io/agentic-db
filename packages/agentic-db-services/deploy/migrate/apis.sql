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
  ('019d11d9-5a42-771c-a432-9a8e4f34b64f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'public', true, 'authenticated', 'anonymous'),
  ('019d11d9-5a44-7dcb-8400-cf43a175a45f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'admin', true, 'authenticated', 'anonymous'),
  ('019d11d9-5a45-7682-8ab8-bc539f3566ff', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'private', false, 'administrator', 'administrator'),
  ('019d11d9-5a45-7a06-addb-948b85961984', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'auth', true, 'authenticated', 'anonymous'),
  ('019d11d9-5a46-71b8-8af3-c025f6e35c27', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


