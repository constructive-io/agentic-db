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
  ('019d130c-f086-78d5-8904-2feb194d1093', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'public', true, 'authenticated', 'anonymous'),
  ('019d130c-f087-7ff0-b69a-b0199f9377b6', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'admin', true, 'authenticated', 'anonymous'),
  ('019d130c-f088-778a-be12-62ba6c45e42a', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'private', false, 'administrator', 'administrator'),
  ('019d130c-f088-7ad3-b2da-16c399f2d759', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'auth', true, 'authenticated', 'anonymous'),
  ('019d130c-f089-7154-9a11-55045b5509ac', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


