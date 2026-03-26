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
  ('019d2831-62ac-7748-8444-3f0a7e987856', '019d2831-6080-7e86-a360-21cd48c6ce49', 'public', true, 'authenticated', 'anonymous'),
  ('019d2831-62ad-7622-a502-8f4722c03cf0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'admin', true, 'authenticated', 'anonymous'),
  ('019d2831-62ad-7d35-8429-09ab38905d9b', '019d2831-6080-7e86-a360-21cd48c6ce49', 'private', false, 'administrator', 'administrator'),
  ('019d2831-62b0-7a4a-bfc8-89cefd2b974e', '019d2831-6080-7e86-a360-21cd48c6ce49', 'auth', true, 'authenticated', 'anonymous'),
  ('019d2831-62b2-7475-9b18-fd26beb3628b', '019d2831-6080-7e86-a360-21cd48c6ce49', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


