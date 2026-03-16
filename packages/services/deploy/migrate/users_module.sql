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
  ('250c590a-ebfa-4660-9151-f00f251b61df', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'users', '9bc1c81e-0a13-45f3-d883-0dffced27e2a', 'role_types');


SET session_replication_role TO DEFAULT;


