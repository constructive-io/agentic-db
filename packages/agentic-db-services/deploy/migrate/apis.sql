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
  ('07bdd370-45d7-8bab-6c26-26fe3627db2b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'app', true, 'authenticated', 'anonymous'),
  ('6069ac05-4eab-5185-4d87-402abf92aa54', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'auth', true, 'authenticated', 'anonymous'),
  ('afbbb895-6dff-9686-aa52-4739a6d6b252', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'admin', true, 'authenticated', 'anonymous'),
  ('db6d695b-2875-6cb2-5045-718fb4acf97c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'private', false, 'administrator', 'administrator'),
  ('e0e16f38-1c16-2921-39fa-f481233a9ba1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'public', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


