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
  ('019d37ba-53bd-718b-bd76-0c91de602729', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', '019d37ba-4154-707f-968e-bbbc85961df7', '019d37ba-4639-7055-a2fd-819201437f9a', '019d37ba-4215-7e7c-b59c-eda58691c519', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


