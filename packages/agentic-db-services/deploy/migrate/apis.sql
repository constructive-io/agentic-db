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
  ('019d20cd-7972-7897-87e0-e3c551075ba4', '019d20cd-7722-776e-8fb8-f96db2895639', 'public', true, 'authenticated', 'anonymous'),
  ('019d20cd-7975-76f3-8971-ac804995c3e9', '019d20cd-7722-776e-8fb8-f96db2895639', 'admin', true, 'authenticated', 'anonymous'),
  ('019d20cd-7976-72db-ba93-76892471bcdf', '019d20cd-7722-776e-8fb8-f96db2895639', 'private', false, 'administrator', 'administrator'),
  ('019d20cd-7976-7643-afed-385e4084bca4', '019d20cd-7722-776e-8fb8-f96db2895639', 'auth', true, 'authenticated', 'anonymous'),
  ('019d20cd-7977-7071-9757-1cacbcc1879d', '019d20cd-7722-776e-8fb8-f96db2895639', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


