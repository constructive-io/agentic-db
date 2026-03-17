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
  ('99fc28da-5127-47e7-8d63-0facfb94af88', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'public', true, 'authenticated', 'anonymous'),
  ('01bed430-2ad8-48bb-b309-fb7ec85de28e', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'admin', true, 'authenticated', 'anonymous'),
  ('3891d1d1-a5d4-4eeb-8190-3f4284580bac', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'private', false, 'administrator', 'administrator'),
  ('fcb33a1e-030c-4965-9c52-9ad9f4e4c408', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'auth', true, 'authenticated', 'anonymous'),
  ('eb7af846-9a04-4f24-8436-7650c519e775', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


