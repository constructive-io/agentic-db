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
  ('019d13bc-2120-7864-92ae-27025426fbef', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'public', true, 'authenticated', 'anonymous'),
  ('019d13bc-2122-7138-a1f9-829943523ba7', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'admin', true, 'authenticated', 'anonymous'),
  ('019d13bc-2122-7813-af7c-b813a825ee80', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'private', false, 'administrator', 'administrator'),
  ('019d13bc-2122-7b88-890e-796bc61f699c', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'auth', true, 'authenticated', 'anonymous'),
  ('019d13bc-2123-724f-ac03-0700987bfba2', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


