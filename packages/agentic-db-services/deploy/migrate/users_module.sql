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
  ('019d1dbf-da1a-7fee-9d8b-df4ec5b6d469', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'users', '019d1dbf-dbfb-7c34-8ee2-f3b4ae210099', 'role_types');


SET session_replication_role TO DEFAULT;


