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
  ('019d1736-5a7f-7138-942c-5cbdb0338d7f', '019d1736-587a-73df-addd-59801f8d68ca', 'public', true, 'authenticated', 'anonymous'),
  ('019d1736-5a81-71c4-8779-a0878491548f', '019d1736-587a-73df-addd-59801f8d68ca', 'admin', true, 'authenticated', 'anonymous'),
  ('019d1736-5a81-7a6d-80ff-9175542fe559', '019d1736-587a-73df-addd-59801f8d68ca', 'private', false, 'administrator', 'administrator'),
  ('019d1736-5a81-7d92-9cce-10d4617c6246', '019d1736-587a-73df-addd-59801f8d68ca', 'auth', true, 'authenticated', 'anonymous'),
  ('019d1736-5a82-750f-bf4b-b9c3ef7874de', '019d1736-587a-73df-addd-59801f8d68ca', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


