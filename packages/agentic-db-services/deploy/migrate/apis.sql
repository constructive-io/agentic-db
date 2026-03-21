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
  ('019d0ffe-4ff2-72b5-b8f1-4f6a3365f133', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'public', true, 'authenticated', 'anonymous'),
  ('019d0ffe-4ff4-7679-ad54-fb62c1086ceb', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'admin', true, 'authenticated', 'anonymous'),
  ('019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'private', false, 'administrator', 'administrator'),
  ('019d0ffe-4ff5-7302-b85c-2b116c4794e7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'auth', true, 'authenticated', 'anonymous'),
  ('019d0ffe-4ff5-7a58-89d1-af6992861560', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


