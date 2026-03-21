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
  ('019d11d9-5a57-71f9-9789-c56ff2784210', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5a57-7c42-8fea-59874686594d', '019d11d9-5aed-7673-b41b-b11528f73f79', 'users', '019d11d9-5c7c-7d21-9df2-4c6a64bb86d7', 'role_types');


SET session_replication_role TO DEFAULT;


