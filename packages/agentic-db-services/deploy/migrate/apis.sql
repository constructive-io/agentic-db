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
  ('0c4c8420-9bfc-d20e-8d52-4265febca5fc', '14b01c2d-072a-5594-645a-675751a83d86', 'auth', true, 'authenticated', 'anonymous'),
  ('2a3d1987-6898-1185-e44f-4102e5c06b74', '14b01c2d-072a-5594-645a-675751a83d86', 'admin', true, 'authenticated', 'anonymous'),
  ('aa478a49-d1c3-5f21-fcba-0f8994af16a7', '14b01c2d-072a-5594-645a-675751a83d86', 'private', false, 'administrator', 'administrator'),
  ('bb95df7b-2908-00d7-b800-b1e9c67965d5', '14b01c2d-072a-5594-645a-675751a83d86', 'public', true, 'authenticated', 'anonymous'),
  ('c16a9feb-27dc-a432-3dc6-5d0d03380b34', '14b01c2d-072a-5594-645a-675751a83d86', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


