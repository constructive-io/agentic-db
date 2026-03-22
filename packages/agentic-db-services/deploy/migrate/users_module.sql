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
  ('019d1736-5a8f-7bd5-9590-2637dd890e82', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a90-7362-80e0-c9cf3c5ff198', '019d1736-5b0d-7766-9f99-3cf518199163', 'users', '019d1736-5c53-7c2e-8b90-04b00ff9199b', 'role_types');


SET session_replication_role TO DEFAULT;


