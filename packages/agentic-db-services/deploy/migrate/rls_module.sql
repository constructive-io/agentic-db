-- Deploy: migrate/rls_module
-- made with <3 @ constructive.io

-- requires: migrate/api_schemas


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

INSERT INTO metaschema_modules_public.rls_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  session_credentials_table_id,
  sessions_table_id,
  users_table_id,
  authenticate,
  authenticate_strict,
  "current_role",
  current_role_id
) VALUES
  ('5d39679d-b8d1-16b3-1452-3bc621e59689', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', '43d51e76-c81d-cf4c-73dc-9a819c9ef1fb', 'e414cb8d-5cda-5706-13c0-dc993e205d21', 'db4368cc-fd7c-06ee-e888-6f913a7edaed', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


