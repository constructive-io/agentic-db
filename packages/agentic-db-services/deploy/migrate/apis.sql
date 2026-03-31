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
  ('019d42ff-c9b5-7825-b2c6-c5a17f45b14e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'public', true, 'authenticated', 'anonymous'),
  ('019d42ff-c9b8-7ca2-b4d2-ce1666a77a2f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'admin', true, 'authenticated', 'anonymous'),
  ('019d42ff-c9b9-77f2-a938-da130d54ead9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'private', false, 'administrator', 'administrator'),
  ('019d42ff-c9b9-7b66-a187-12ec7c1e2db4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'auth', true, 'authenticated', 'anonymous'),
  ('019d42ff-c9ba-75f1-b0e4-f355bd253ab9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


