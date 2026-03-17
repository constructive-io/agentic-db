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
  ('a1231ca0-4c3a-4fc8-b7d1-ef992c756035', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', '9bc1d761-1ce6-4c24-a4fa-d50d50e2cea8', '9bc1b812-e514-4478-c3e7-e4d9fd10726b', '9bc1a6e9-904e-4179-f9fc-23985a15c486', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


