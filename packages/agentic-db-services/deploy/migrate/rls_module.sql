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
  ('2529d705-856e-d810-bc0f-e99586028bdd', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', '0c0c780f-932a-f178-1823-6b5c12b5ef4d', '193704a9-3707-edb7-601a-b161685f1db0', 'bfa08e3e-fb20-3153-84aa-30780a8a4805', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


