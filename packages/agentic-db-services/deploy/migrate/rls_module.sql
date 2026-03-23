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
  ('48a4d800-ae6a-928a-bddf-71c8859dc1ce', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', '1464c5a1-1149-ffdc-99c9-e0a4a2e561f2', '772b1544-4191-c9b3-bedb-8d1e23786615', 'cc6c54e9-9854-b2ff-cac4-f972a4b83010', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


