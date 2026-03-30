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
  ('019d4100-4262-76cb-8618-ee7da8d931bb', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'public', true, 'authenticated', 'anonymous'),
  ('019d4100-4263-779c-b5ee-d06cd25d1254', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'admin', true, 'authenticated', 'anonymous'),
  ('019d4100-4264-70ed-b132-e925e59cb463', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'private', false, 'administrator', 'administrator'),
  ('019d4100-4264-7452-80df-ebc4e2f81bc5', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'auth', true, 'authenticated', 'anonymous'),
  ('019d4100-4264-7b93-8a26-f9e8aef4ae3d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


