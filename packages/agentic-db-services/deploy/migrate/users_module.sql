-- Deploy: migrate/users_module
-- made with <3 @ constructive.io

-- requires: migrate/levels_module


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

INSERT INTO metaschema_modules_public.users_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name,
  type_table_id,
  type_table_name
) VALUES
  ('0e061a2b-2184-f302-9393-eff2f14fc2df', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'users', 'e7b8f9bf-a6b9-72f8-c925-99d8f9aec2e6', 'role_types');


SET session_replication_role TO DEFAULT;


