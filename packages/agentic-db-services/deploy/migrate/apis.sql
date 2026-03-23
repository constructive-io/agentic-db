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
  ('0d110a49-7d72-7da5-b7e0-6723b10451ca', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'public', true, 'authenticated', 'anonymous'),
  ('d7480806-c43a-1d0b-b307-493e39b96eb9', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'admin', true, 'authenticated', 'anonymous'),
  ('b24bcaa5-c86c-47d1-8a22-44a1add68332', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'private', false, 'administrator', 'administrator'),
  ('b0aba09f-b31b-7c5b-7d40-0d3e2c7faffa', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'auth', true, 'authenticated', 'anonymous'),
  ('c670542b-e71a-3b31-7baa-e34ec9e7be7f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


