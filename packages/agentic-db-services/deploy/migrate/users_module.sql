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
  ('019d2831-62c0-7488-9601-1861968ab3fc', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-62c0-7a9d-9df1-38d16ac6491c', '019d2831-6349-7cde-a517-c115bf8f4bff', 'users', '019d2831-64aa-73f8-bfd4-936586dec2dd', 'role_types');


SET session_replication_role TO DEFAULT;


