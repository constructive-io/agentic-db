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
  ('d4ef1328-6ae9-1f9d-3814-f73214ece799', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'users', 'ecdacdf9-8f2e-f6c4-1e4a-243957bfed14', 'role_types');


SET session_replication_role TO DEFAULT;


