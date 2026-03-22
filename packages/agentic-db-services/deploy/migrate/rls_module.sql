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
  ('019d13bc-b1d9-7155-8776-de9bb27f5f4d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b1d9-78ee-852f-34e586b4ea0d', '019d13bc-9fc4-7b2c-8762-40424411642e', '019d13bc-a49f-7556-9298-a64ba619d8ee', '019d13bc-a084-70ac-9b6e-b414b93b116d', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


