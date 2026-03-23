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
  ('019d19cf-b5aa-7262-98b2-78fd6bc87b81', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b5aa-7a61-8218-1831188e4aa5', '019d19cf-a124-794b-b34d-0036b3830517', '019d19cf-a6ad-7f64-a5c3-450dbdd19941', '019d19cf-a1f5-7f91-8de6-ba28de4f3c1e', '019d19cf-04f9-762a-946a-add4e6430409', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


