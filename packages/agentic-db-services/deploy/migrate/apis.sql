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
  ('019d3d14-e6cf-792d-840d-e599d57dedef', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'public', true, 'authenticated', 'anonymous'),
  ('019d3d14-e6d1-7baf-8f49-c00be47ccd9d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'admin', true, 'authenticated', 'anonymous'),
  ('019d3d14-e6d2-7270-97ea-e623e7518fe6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'private', false, 'administrator', 'administrator'),
  ('019d3d14-e6d2-7565-ab29-43fe02abb602', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'auth', true, 'authenticated', 'anonymous'),
  ('019d3d14-e6d2-7cc4-b944-e70113c8d4fc', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


