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
  ('019d3dab-9c9c-7b04-8ed8-38a97039a8f1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', '019d3dab-8997-7974-bdb2-960a100e027f', '019d3dab-8eb6-7293-acf4-e4c2454189ab', '019d3dab-8a67-7613-83ec-c1f30d39e5ed', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


