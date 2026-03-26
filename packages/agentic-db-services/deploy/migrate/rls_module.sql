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
  ('019d2832-1244-777a-b55e-98738d7f238f', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-1244-7e20-87ce-9c2c416ac919', '019d2831-ff21-7762-b954-2246c850f297', '019d2832-0442-7220-ae82-c26c548b7273', '019d2831-ffe5-771a-b2a3-5907257c8881', '019d2831-6349-7cde-a517-c115bf8f4bff', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


