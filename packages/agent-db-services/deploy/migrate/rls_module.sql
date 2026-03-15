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
  ('ad9261b9-bfdb-4064-8639-6965ec9a829a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', 'a0081108-0bf8-4a86-9a05-a0669b2c1d4b', 'a008f2ff-e571-41fc-a4fe-30dd9a67734b', 'a0080358-3ac8-45b4-c55e-233f9d068509', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


