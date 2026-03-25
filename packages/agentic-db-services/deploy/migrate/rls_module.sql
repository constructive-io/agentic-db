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
  ('019d21f8-b5a3-72d2-8956-afd7541ec613', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b5a3-7a53-bfd4-b7a0cfbc6b77', '019d21f8-a2a9-75f2-8c2a-84a537139f8c', '019d21f8-a807-742e-bdaa-0b7136dbaaea', '019d21f8-a371-700d-b553-7d0f3f5b0761', '019d21f8-2335-70cb-b636-53bf74d97668', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


