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
  ('019d416f-3768-75f3-9522-4a3045c95593', '019d416f-3253-7543-a058-30ea5a6b7e37', 'public', true, 'authenticated', 'anonymous'),
  ('019d416f-3769-78ea-bed9-9244b3e758b1', '019d416f-3253-7543-a058-30ea5a6b7e37', 'admin', true, 'authenticated', 'anonymous'),
  ('019d416f-376a-713e-9f3d-294bfd28077e', '019d416f-3253-7543-a058-30ea5a6b7e37', 'private', false, 'administrator', 'administrator'),
  ('019d416f-376a-74ce-9034-d3e98ab93c81', '019d416f-3253-7543-a058-30ea5a6b7e37', 'auth', true, 'authenticated', 'anonymous'),
  ('019d416f-376a-7c39-a596-0da64d95bb43', '019d416f-3253-7543-a058-30ea5a6b7e37', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


