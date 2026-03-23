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
  ('019d19cf-045d-7443-8616-b4e079c4cdc0', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'public', true, 'authenticated', 'anonymous'),
  ('019d19cf-045e-7683-8310-ac08596f1673', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'admin', true, 'authenticated', 'anonymous'),
  ('019d19cf-045e-7f3e-b09b-7d4125df653f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'private', false, 'administrator', 'administrator'),
  ('019d19cf-045f-7351-b4d9-62f65521448d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'auth', true, 'authenticated', 'anonymous'),
  ('019d19cf-045f-7b45-bcc5-bd2d83fcbd75', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


